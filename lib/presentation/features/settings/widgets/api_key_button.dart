import 'package:flutter/material.dart';

class ApiKeyButton extends StatelessWidget {
  final ApiButtonStatuses status;
  final VoidCallback? callback;
  const ApiKeyButton({required this.callback, required this.status, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (status == ApiButtonStatuses.readyToCheck) {
      return IconButton(onPressed: () => callback, icon: const Icon(Icons.refresh, color: Colors.blue));
    } else if (status == ApiButtonStatuses.failed) {
      return IconButton(onPressed: () => callback, icon: const Icon(Icons.close, color: Colors.red));
    } else {
      return IconButton(onPressed: () {}, icon: const Icon(Icons.check, color: Colors.green));
    }
  }
}

enum ApiButtonStatuses { readyToCheck, ok, failed }
