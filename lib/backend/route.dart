import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectfight2/backend/myArrayDatabase.dart';
import 'package:projectfight2/page/DChatPage.dart';
import 'package:projectfight2/page/DProfilePage.dart';
import 'package:projectfight2/page/login.dart';
import 'package:projectfight2/page/mainDashboard.dart';
import 'package:projectfight2/page/register.dart';

Function LoginRoute(BuildContext context){
  Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => LoginPage())
  );
}
Function RegisterRoute(BuildContext context){
  Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => RegisterPage())
  );
}
Function DashboardRoute(BuildContext context,AllUser data){
  Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => MainDashboard(
        ArrayData: data,
      ))
  );
}
Function DProfileRoute(BuildContext context){
  Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => DProfilePage())
  );
}
Function DChatRoute(BuildContext context){
  Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => DChatPage())
  );
}