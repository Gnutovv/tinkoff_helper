import 'package:flutter/material.dart';
import 'package:tinkoff_helper/common/format.dart';
import 'package:tinkoff_helper/presentation/common/widgets/card_item.dart';

class ExpertScreen extends StatefulWidget {
  const ExpertScreen({Key? key}) : super(key: key);

  @override
  State<ExpertScreen> createState() => _ExpertScreenState();
}

class _ExpertScreenState extends State<ExpertScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CardItemWidget(
              width: 280,
              label: const Text(
                'Баланс',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: [
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Всего: '),
                    Text(
                      '250000.00'.toMoneyFormat,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Cвободно: '),
                    Text(
                      '12350.00'.toMoneyFormat,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Торгуемый баланс: '),
                    Text(
                      '250000.00'.toMoneyFormat,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber, // Background color
                      ),
                      child: const SizedBox(width: 96, child: Icon(Icons.edit)),
                    ),
                  ],
                ),
              ]),
          CardItemWidget(
              width: 390,
              label: const Text(
                'Ступени',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: [
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Количество торгуемых инструментов: '),
                    Text('50', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Средств на один инструмент: '),
                    Text(
                      '37462.57'.toMoneyFormat,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Divider(),
                ...List.generate(
                  5,
                  (index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${intToOrderStepName(index)}: '),
                      const Text(
                        '2',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber, // Background color
                      ),
                      child: const SizedBox(
                        width: 96,
                        child: Icon(Icons.refresh_rounded),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber, // Background color
                      ),
                      child: const SizedBox(
                        width: 96,
                        child: Icon(Icons.edit),
                      ),
                    ),
                  ],
                ),
              ]),
        ],
      ),
    );
  }
}

/// Тут у нас будут виджеты с общим (1) торговым(2 *) и свободным(3) балансом,
/// (в блоке с балансами будет иконка обновления)
/// сила ступеней (4*), кол-во акций в торговле (5*).
/// Ниже будет кнопка перехода на экран непосредственно акций и торговли
