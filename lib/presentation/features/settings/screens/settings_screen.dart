import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/presentation/features/settings/bloc/settings_bloc.dart';
import 'package:tinkoff_helper/presentation/features/settings/widgets/api_key_button.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final loaderController = getIt<LoaderController>();
  final TextEditingController apiKeyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    apiKeyController.text = apiKeyGlobal ?? '';
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
          error: (state) => print(state.errorMessage),
        );
      },
      builder: (context, state) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
