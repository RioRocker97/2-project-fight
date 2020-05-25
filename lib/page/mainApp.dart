import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectfight2/backend/myclient.dart';
import 'package:projectfight2/widget/display.dart';
class MainApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    respond();
    return MainState();
  }
}
class MainState extends State<MainApp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: DisplayTextFront(),
      ),
    );
  }
}