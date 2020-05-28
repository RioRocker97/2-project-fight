import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectfight2/backend/myArrayDatabase.dart';
import 'package:projectfight2/widget/display.dart';

class MainDashboard extends StatefulWidget{
  MainDashboard({this.ArrayData});
  AllUser ArrayData;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DashboardState(ArrayData);
  }
}
class DashboardState extends State<MainDashboard>{
  DashboardState(this.aydata);
  AllUser aydata;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    List player = aydata.getOtherFighter();
    return Scaffold(
      body: Center(
        child: Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('public/regular.jpg'),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            children: [
              Container(
                height: h/10,
                padding: EdgeInsets.only(top:10.0),
                child: Column(
                  children: [
                    DisplayTextDash("Welcome,Fighter"),
                    DisplayTextDash(aydata.name[aydata.CurrentUser])
                  ],
                ),
              ),
              Container(
                width: w,
                height: 7*h/10,
                child: ListView(
                  children: player.map((play)=> new FighterCard(play,aydata)).toList(),
                ),
              ),
              MainDashboardButton(userData: aydata)
            ],
          ),
        ),
      )
    );
  }
}