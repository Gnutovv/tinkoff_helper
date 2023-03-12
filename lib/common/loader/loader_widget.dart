import 'package:flutter/material.dart';

import 'loader_controller.dart';

class LoaderWidget extends StatelessWidget {
  final LoaderController controller;

  const LoaderWidget({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: controller,
      builder: (context, value, child) {
        if (value) {
          return child!;
        }
        return const SizedBox();
      },
      child: Container(
        color: const Color(0x80000000),
        child: Center(
          child: Container(
            width: 66,
            height: 66,
            decoration: const BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
