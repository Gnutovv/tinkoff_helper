import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/features/expert/bloc/expert_bloc.dart';
import 'package:tinkoff_helper/presentation/features/settings/bloc/settings_bloc.dart';
import 'package:tinkoff_helper/presentation/features/settings/widgets/api_key_button.dart';
import 'package:tinkoff_helper/storage/hive_storage.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final loaderController = getIt<LoaderController>();
  final TextEditingController apiKeyController = TextEditingController();
  final link = 'www.tinkoff.ru/invest/settings/';

  @override
  void initState() {
    super.initState();
    apiKeyController.text = getIt<HiveStorage>().apiKey;
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SettingsBloc>();
    return BlocConsumer<SettingsBloc, SettingsState>(
      listener: (context, state) {
        state.maybeWhen(
          inProgress: (_, __) => loaderController.startLoading(),
          orElse: () => loaderController.stopLoading(),
        );
        state.mapOrNull(
          initialized: (state) {
            if (state.hasUserAccount) context.read<ExpertBloc>().add(ExpertEvent.init(userAccount: state.userAccount!));
          },
          error: (state) => showDialog(
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
          ), //print(state.message),
        );
      },
      builder: (context, state) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Для начала работы необходимо актуализировать корректность (доступность) секретного ключа.',
              style: TextStyle(fontSize: 22),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'В случае отстутствия секретного ключа его можно получить тут: ',
                  style: TextStyle(fontSize: 16),
                ),
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
            Row(
              children: [
                const Text(
                  'API key:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: TextField(
                    controller: apiKeyController,
                    onChanged: (text) => setState(() {}),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a Tinkoff API key',
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: apiKeyController.text.isEmpty
                      ? const SizedBox()
                      : bloc.state.checkStatus == CheckApiKeyStatuses.readyToCheck ||
                              apiKeyController.text != state.apiKey
                          ? ApiKeyButton(
                              callback: () => bloc.add(SettingsEvent.checkApiKey(apiKey: apiKeyController.text)),
                              status: CheckApiKeyStatuses.readyToCheck)
                          : state.checkStatus == CheckApiKeyStatuses.failed
                              ? ApiKeyButton(callback: () {}, status: CheckApiKeyStatuses.failed)
                              : ApiKeyButton(callback: () {}, status: CheckApiKeyStatuses.ok),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
