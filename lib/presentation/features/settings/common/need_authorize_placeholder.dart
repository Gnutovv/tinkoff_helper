import 'package:flutter/material.dart';

class NeedAuthorizePlaceholder extends StatelessWidget {
  const NeedAuthorizePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Для продолжения работы с приложением, необходимо верифицировать токен на странице настроек',
        textAlign: TextAlign.center,
      ),
    );
  }
}
