import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectfight2/widget/display.dart';

class DProfilePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfilePage();
  }
}
class ProfilePage extends State<DProfilePage>{

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: w,
              height: 8*h/10,
              color: Colors.greenAccent,
            ),
            MainDashboardButton()
          ],
        ),
      ),
    );
  }
}