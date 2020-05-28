import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectfight2/backend/myArrayDatabase.dart';
import 'package:projectfight2/backend/route.dart';
import 'package:projectfight2/page/register.dart';

class DisplayTextFront extends StatelessWidget{
  DisplayTextFront(this.text);
  String text;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      style: GoogleFonts.baloo(
        textStyle: TextStyle(
          fontSize: 50.0,
          color: Colors.white
        )
      ),
    );
  }
}
class DisplayTextDash extends StatelessWidget{
  DisplayTextDash(this.text);
  String text;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      style: GoogleFonts.baloo(
          textStyle: TextStyle(
              fontSize: 20.0,
              color: Colors.white
          )
      ),
    );
  }
}
class ButtonFront extends StatelessWidget{
  ButtonFront(this.text,this.size,this.func);
  String text;
  double size;
  Function func;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlatButton(
      child: Text(text,style: GoogleFonts.baloo(
        fontSize: size-15.0,
        color: Colors.deepOrange,
      ),),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      padding: EdgeInsets.only(top:5.0,bottom: 5.0,left: size*1.7,right: size*1.7),
      color: Colors.greenAccent,
      onPressed: func,
    );
  }
}

class CircleProfilePic extends StatelessWidget{
  CircleProfilePic(this.url);
  String url;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 150.0,
      height: 150.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: Image(image: AssetImage(url),),
      ),
    );
  }
}

class inputText extends StatelessWidget{
  inputText(this.word,this.control,this.pass);
  var control;
  bool pass;
  String word;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w/1.5,
      decoration: BoxDecoration(),
      child: TextField(
        obscureText: pass,
        controller: control,
        decoration: InputDecoration(
            hintText: word,
            hintStyle: GoogleFonts.baloo(textStyle: TextStyle(
              fontSize: 20.0,color: Colors.white
            )),
            filled: true,
            fillColor: Colors.greenAccent,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w/16)
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.white
                ),
                borderRadius: BorderRadius.circular(w/16)
            )
        ),
      ),
    );
  }
}

class RadioSelect extends StatelessWidget{
  RadioSelect(this.g,this.func);
  Function func;
  int g ;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w,
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left: w/5)),
          Image(image: AssetImage('public/boy.png'),width: 50.0,height: 50.0,alignment: Alignment.centerLeft),
          Radio(
            value: 1,
            groupValue: g,
            onChanged: func,
          ),
          Padding(padding: EdgeInsets.only(left: w/10)),
          Image(image: AssetImage('public/girl.png'),width: 50.0,height: 50.0,alignment: Alignment.centerLeft),
          Radio(
            value: 2,
            groupValue: g,
            onChanged: func,
          ),
        ],
      )
    );
  }
}

class SlideSelect extends StatelessWidget{
  SlideSelect(this.current,this.func);
  int current;
  Function func;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: w/10),
            child: Text('15'),
          ),
          Padding(
            padding: EdgeInsets.only(left: w/30),
            child: Container(
              width: w/1.5,
              child: Slider(
                activeColor: Colors.yellow,
                inactiveColor: Colors.amberAccent,
                value: current.toDouble(),
                min: 15.0,
                max: 80.0,
                label: '$current',
                divisions: 65,
                onChanged: func,
              ),
            )
          ),
          Padding(
            padding: EdgeInsets.only(left: w/50),
            child: Text('80'),
          ),
        ],
      )
    );
  }
}
class FighterCard extends StatelessWidget{
  FighterCard(this.text,this.aydata);
  AllUser aydata;
  String text;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Card(
      color: Colors.blueGrey,
      child: InkWell(
        splashColor: Colors.red,
        onTap: (){DFightRoute(context,aydata);},
        child: Container(
          padding: EdgeInsets.only(top: 30.0,bottom: 30.0,left: 10.0,right: 10.0),
          width: w,
          child: Column(
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image(image: AssetImage('public/profile.png'),),
                ),
              ),
              Text(text,style: GoogleFonts.baloo(textStyle: TextStyle(
                  fontSize: 20.0,color: Colors.red
              ))),
              Text("Ready to Fight!",style: GoogleFonts.baloo(textStyle: TextStyle(
                  fontSize: 30.0,color: Colors.red
              )))
            ],
          ),
        ),
      )
    );
  }
}
class DashboardButton extends StatelessWidget{
  DashboardButton(this.url,this.func,this.size);
  String url;
  Function func;
  double size;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(10.0),
      child: InkWell(
        onTap: func,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(size/3),
          child: Image(image: AssetImage(url),),
        ),
      ),
    );
  }
}
class MainDashboardButton extends StatelessWidget{
  MainDashboardButton({this.userData});
  AllUser userData;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      height: 2*h/10,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: DashboardButton('public/logout.png',(){MainRoute(context);},100.0),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: DashboardButton('public/fight.png',(){DashboardRoute(context,userData);},150.0),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: DashboardButton('public/own.png',(){DProfileRoute(context,userData);},100.0),
          )
        ],
      ),
    );
  }
}