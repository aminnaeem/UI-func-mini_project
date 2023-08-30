import 'package:flutter/material.dart';
import 'package:ui_func_project/getiing_started/getting_started.dart';
import 'package:ui_func_project/ui/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.customTheme(),
      home: GettingStarted(),
    );
  }
}