import 'package:flutter/material.dart';
import 'package:tinkoff_helper/presentation/features/settings/widgets/api_key_button.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  TextEditingController apiKeyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                child: apiKeyController.text.isNotEmpty
                    ? ApiKeyButton(callback: () {}, status: ApiButtonStatuses.readyToCheck)
                    : const SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
