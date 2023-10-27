import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {
  final Icon? icon;
  final Text label;
  final List<Widget> content;
  final double? width;
  final double? height;
  final double? padding;
  final CrossAxisAlignment? positioned;

  const CardItemWidget({
    this.icon,
    required this.label,
    required this.content,
    this.width,
    this.height,
    this.padding,
    this.positioned,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding ?? 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) icon!,
            label,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: positioned ?? CrossAxisAlignment.center,
              children: [...content],
            ),
          ],
        ),
      ),
    );
  }
}
