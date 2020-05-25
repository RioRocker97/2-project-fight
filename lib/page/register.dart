import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectfight2/widget/display.dart';
class RegisterPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterState();
  }
}
class RegisterState extends State<RegisterPage>{
  @override
  int gender = 1;
  int age = 25;
  var user = TextEditingController();
  var name = TextEditingController();
  var pass = TextEditingController();
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: h/10)),
                  CircleProfilePic('public/profile1.jpg'),
                  Padding(padding: EdgeInsets.only(top: h/30)),
                  inputText("Name",name,false),
                  Padding(padding: EdgeInsets.only(top: h/40)),
                  inputText("Username",user,false),
                  Padding(padding: EdgeInsets.only(top: h/40)),
                  inputText("Password",pass,true),
                  Padding(padding: EdgeInsets.only(top: h/40)),
                  RadioSelect(gender,(int change){
                    setState(() {
                      gender = change;
                    });
                  }),
                  Padding(padding: EdgeInsets.only(top: h/40)),
                  SlideSelect(age,(double val){
                    setState(() {
                      age = val.toInt();
                    });
                  }),
                  Padding(padding: EdgeInsets.only(top: h/30)),
                  ButtonFront("Register",50.0,(){
                    setState(() {
                      print("get name :"+name.text);
                      print("get username :"+user.text);
                      print("get pass :"+pass.text);
                      print("get gender :"+(gender==1?'Boy':'Girl'));
                      print("get age :"+age.toString());
                    });
                  })
                ],
              ),
            )
          )
      ),
    );
  }
}