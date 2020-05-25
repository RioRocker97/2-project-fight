import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          color: Colors.lightBlueAccent
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
        fontSize: size-20.0,
        color: Colors.deepOrange,
      ),),
      padding: EdgeInsets.only(top:10.0,bottom: 10.0,left: size*2,right: size*2),
      color: Colors.blueGrey,
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
            filled: true,
            fillColor: Colors.blueGrey,
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