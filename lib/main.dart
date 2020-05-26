import 'package:flutter/material.dart';
import 'package:projectfight2/page/login.dart';
import 'package:projectfight2/page/mainApp.dart';
import 'package:projectfight2/backend/myserver.dart';
import 'package:projectfight2/page/mainDashboard.dart';
import 'package:projectfight2/page/register.dart';
void main() {
  //initserver();
  runApp(
      MaterialApp(home: LoginPage())
  );
}