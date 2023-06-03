import 'package:flutter/material.dart';

class ApiKeyButton extends StatelessWidget {
  final CheckApiKeyStatuses status;
  final VoidCallback? callback;
  const ApiKeyButton({required this.callback, required this.status, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (status == CheckApiKeyStatuses.readyToCheck) {
      return IconButton(onPressed: callback, icon: const Icon(Icons.refresh, color: Colors.blue));
    } else if (status == CheckApiKeyStatuses.failed) {
      return IconButton(onPressed: callback, icon: const Icon(Icons.close, color: Colors.red));
    } else {
      return const IconButton(onPressed: null, icon: Icon(Icons.check, color: Colors.green));
    }
  }
}

enum CheckApiKeyStatuses { readyToCheck, ok, failed }
