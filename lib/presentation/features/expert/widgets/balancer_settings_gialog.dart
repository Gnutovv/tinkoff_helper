import 'package:flutter/material.dart';

Future showBalancerSettingsDialog(
  BuildContext context, {
  required int stocksAmount,
  required List<int> stepsRate,
  required Function({required int stocksAmount, required List<int> stepsRate}) onAccept,
}) {
  List<int> strToList(String str) {
    String newStr = str.trim()..replaceAll(' ', '');
    List<String> lst = newStr.split(',');
    return List.generate(lst.length, (index) => int.parse(lst[index]));
  }

  String listToString(List<int> list) {
    String str = '';
    for (var element in list) {
      if (str != '') {
        str += ', $element';
      } else {
        str += '$element';
      }
    }
    return str;
  }

  final stocksAmountController = TextEditingController();
  final stepsRateController = TextEditingController();
  stocksAmountController.text = stocksAmount.toString();
  stepsRateController.text = listToString(stepsRate);

  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Настройка силы ступеней'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: stocksAmountController,
              decoration: const InputDecoration(
                labelText: 'Кол-во торгуемых инструментов',
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.blue),
                hintText: 'Кол-во инструментов',
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: stepsRateController,
              decoration: const InputDecoration(
                labelText: 'Введите силу ступеней через запятую',
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.blue),
                hintText: 'Сила ступеней',
              ),
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              onAccept(
                stocksAmount: int.parse(stocksAmountController.text),
                stepsRate: strToList(stepsRateController.text),
              );
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
