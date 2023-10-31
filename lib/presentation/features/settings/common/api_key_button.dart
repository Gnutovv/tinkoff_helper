import 'package:flutter/material.dart';
import 'package:tinkoff_helper/presentation/features/settings/common/statuses.dart';

class ApiKeyButton extends StatelessWidget {
  final CheckApiKeyStatuses status;
  final VoidCallback? callback;
  const ApiKeyButton({required this.callback, required this.status, super.key});

  @override
  Widget build(BuildContext context) {
    if (status == CheckApiKeyStatuses.readyToCheck) {
      return IconButton(onPressed: callback, icon: const Icon(Icons.refresh, color: Colors.blue));
    } else {
      return IconButton(onPressed: callback, icon: const Icon(Icons.close, color: Colors.red));
    }
  }
}
