import 'package:flutter/material.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Портфель',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(40),
          color: Colors.white60,
          width: 700,
          height: 450,
          child: SingleChildScrollView(
            child: Column(),
          ),
        ),
      ],
    );
  }
}
