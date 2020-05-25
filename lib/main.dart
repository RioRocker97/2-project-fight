import 'package:flutter/material.dart';
import 'package:projectfight2/page/mainApp.dart';
import 'package:projectfight2/backend/myserver.dart';
void main() {
  initserver();
  runApp(
      MaterialApp(home: MainApp())
  );
}