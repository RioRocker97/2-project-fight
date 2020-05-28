import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectfight2/backend/myArrayDatabase.dart';
import 'package:projectfight2/backend/route.dart';
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
  AllUser data = new AllUser();
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    var user = TextEditingController();
    var pass = TextEditingController();
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('public/regular.jpg'),
            fit: BoxFit.cover
          )
        ),
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
                  FocusScope.of(context).unfocus();
                  print("Status: "+data.checkUser(user.text, pass.text).toString());
                  if(data.checkUser(user.text, pass.text)){
                    DashboardRoute(context,data);
                  }
                });
              })
            ],
          ),
        )
      ),
    );
  }
}