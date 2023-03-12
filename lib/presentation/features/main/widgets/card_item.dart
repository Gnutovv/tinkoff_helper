import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final Icon icon;
  final String label;
  final String value;

  const CardItem({required this.icon, required this.label, required this.value, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      width: 164,
      height: 164,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          icon,
          Text(
            label,
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
