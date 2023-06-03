import 'package:flutter/material.dart';

Color equalColor({required num first, required num second}) => first > second
    ? const Color(0xFF00AA00)
    : first < second
        ? Colors.red
        : Colors.blue;
