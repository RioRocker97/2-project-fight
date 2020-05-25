import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectfight2/page/login.dart';
import 'package:projectfight2/page/register.dart';

Function LoginRoute(BuildContext context){
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => LoginPage())
  );
}
Function RegisterRoute(BuildContext context){
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => RegisterPage())
  );
}