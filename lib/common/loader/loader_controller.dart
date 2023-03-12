import 'package:flutter/material.dart';

class LoaderController extends ValueNotifier<bool> {
  LoaderController() : super(false);

  void startLoading() {
    value = true;
  }

  void stopLoading() {
    value = false;
  }
}
