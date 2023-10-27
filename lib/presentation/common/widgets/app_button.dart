import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double? width;

  const AppButton({required this.child, required this.onPressed, this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
      ),
      child: SizedBox(width: width, child: child),
    );
  }
}
