import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectfight2/backend/myArrayDatabase.dart';

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
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text("Welcome,Fighter "+aydata.name[aydata.CurrentUser],style: GoogleFonts.baloo(textStyle: TextStyle(
          fontSize: 25.0,color: Colors.blue
        )),)
      ),
    );
  }
}