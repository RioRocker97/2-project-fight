import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DisplayTextFront extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "Project Fight",
      style: GoogleFonts.baloo(
        textStyle: TextStyle(
          fontSize: 50.0,
          color: Colors.lightBlueAccent
        )
      ),
    );
  }
}