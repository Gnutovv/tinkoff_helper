import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/features/settings/bloc/settings_bloc.dart';
import 'package:tinkoff_helper/presentation/features/settings/common/statuses.dart';
import 'package:tinkoff_helper/presentation/features/settings/common/api_key_button.dart';
import 'package:tinkoff_helper/storage/secure_storage.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final loaderController = getIt<LoaderController>();
  final TextEditingController apiKeyController = TextEditingController(text: getIt<SecureStorage>().key);
  final link = 'www.tinkoff.ru/invest/settings/';

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SettingsBloc>();
    return BlocConsumer<SettingsBloc, SettingsState>(
      listener: (context, state) {
        state.maybeWhen(
          inProgress: (_) => loaderController.startLoading(),
          orElse: () => loaderController.stopLoading(),
        );
        state.mapOrNull(
          failed: (state) => showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Error'),
                content: Text(state.message),
                actions: <Widget>[
                  ElevatedButton(
                    child: const Text('Ok'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          ),
        );
      },
      builder: (context, state) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Для начала работы необходимо актуализировать корректность (доступность) секретного ключа.',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 48,
              child: const Text(
                'В случае отстутствия секретного ключа его можно получить тут: ',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () => launchUrl(Uri(path: link)),
                    child: Text(
                      link,
                      style: const TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 18,
                      ),
                    )),
                IconButton(
                    onPressed: () => Clipboard.setData(
                          ClipboardData(text: link),
                        ),
                    icon: const Icon(
                      Icons.copy,
                      size: 18,
                      color: Colors.grey,
                    )),
              ],
            ),
            const SizedBox(height: 32),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'API key:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Clipboard.getData(Clipboard.kTextPlain).then(
                          (value) => setState(() => apiKeyController.text = value?.text ?? ''),
                        );
                      },
                      child: const Text('Вставить из буфера'),
                    ),
                    ElevatedButton(
                      onPressed: () => setState(() => apiKeyController.text = ''),
                      child: const Text('Очистить'),
                    ),
                  ],
                ),
                SizedBox(
                  child: TextField(
                    showCursor: true,
                    cursorColor: Colors.black,
                    obscureText: true,
                    obscuringCharacter: '•',
                    controller: apiKeyController,
                    onChanged: (text) => setState(() {}),
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Enter a Tinkoff API key',
                      suffixIcon: SizedBox(
                        child: apiKeyController.text.isEmpty
                            ? const SizedBox()
                            : !state.success
                                ? ApiKeyButton(
                                    callback: () => bloc.add(SettingsEvent.checkToken(apiKey: apiKeyController.text)),
                                    status: CheckApiKeyStatuses.readyToCheck)
                                : const ApiKeyButton(callback: null, status: CheckApiKeyStatuses.failed),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
