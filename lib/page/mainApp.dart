import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectfight2/backend/route.dart';
import 'package:projectfight2/widget/display.dart';
class MainApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return MainState();
  }
}
class MainState extends State<MainApp>{
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: h,
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: h/10)),
              DisplayTextFront("Project_Fight"),
              Padding(padding: EdgeInsets.only(top: h/2)),
              ButtonFront("Log In",50.0,(){
                setState(() {
                  LoginRoute(context);
                });
              }),
              Padding(padding: EdgeInsets.only(top: h/30)),
              ButtonFront("Register",50.0,(){
                setState(() {
                  RegisterRoute(context);
                });
              }),
            ],
          ),
        )
      ),
    );
  }
}