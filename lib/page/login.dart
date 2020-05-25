
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectfight2/widget/display.dart';

class LoginPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}
class LoginState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    var user = TextEditingController();
    var pass = TextEditingController();
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Padding(padding: EdgeInsets.only(top: h/20)),
              CircleProfilePic('public/profile1.jpg'),
              Padding(padding: EdgeInsets.only(top: h/20)),
              inputText("Username",user,false),
              Padding(padding: EdgeInsets.only(top: h/30)),
              inputText("Password",pass,true),
              Padding(padding: EdgeInsets.only(top: h/20)),
              ButtonFront("Login",50.0,(){
                setState(() {

                });
              })
            ],
          ),
        )
      ),
    );
  }
}