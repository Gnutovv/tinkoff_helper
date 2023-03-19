import 'package:flutter/material.dart';

Future showAccountSettingsDialog(
  BuildContext context, {
  required double initBalance,
  required double maxBalance,
  required Function(String value) onAccept,
}) {
  final controller = TextEditingController();
  controller.text = initBalance.toString();
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Настройка торгового баланса'),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Максимальное значение: $maxBalance',
            border: const OutlineInputBorder(),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            labelStyle: const TextStyle(color: Colors.blue),
            hintText: 'Enter a trade balance',
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              onAccept(controller.text);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber, // Background color
            ),
            child: const SizedBox(
              width: 24,
              child: Icon(Icons.check),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber, // Background color
            ),
            child: const SizedBox(
              width: 24,
              child: Icon(Icons.close),
            ),
          ),
        ],
      );
    },
  );
}
