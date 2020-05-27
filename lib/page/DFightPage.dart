import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:projectfight2/backend/myArrayDatabase.dart';
import 'package:projectfight2/backend/myclient.dart';
import 'package:projectfight2/backend/myserver.dart';
import 'package:projectfight2/backend/route.dart';
import 'package:projectfight2/widget/display.dart';
class DFightPage extends StatefulWidget{
  DFightPage({this.mydata});
  AllUser mydata;
  @override
  State<StatefulWidget> createState() {
    return FightPage(mydata);
  }
}
class FightPage extends State<DFightPage>{
  FightPage(this.data);
  AllUser data;
  double blue = 1.0;
  double red ;
  HP redC = new HP();
  Function gameRun(){
    setState(() {
      redC.initserver();
      red = redC.hp;
    });
  }
  @override
  Widget build(BuildContext context){
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    gameRun();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: w,
              height: 8*h/10,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('public/full_body.png'),
                  fit: BoxFit.cover
                )
              ),
              child: Column(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          respond('2/');
                          blue-=0.2;
                          if(blue <= 0.0 || red <= 0.0){
                            showDialog(
                                context: context,
                                builder: (BuildContext con){
                                  return AlertDialog(
                                    title: Text("Game Over!"),
                                    content: Text((red<=0.0)?'Blue Win !':'Red Win !'),
                                    actions: [
                                      FlatButton(
                                        child: Text("Back to Dashboard"),
                                        onPressed: (){
                                          redC = new HP();
                                          DashboardRoute(context, data);
                                        },
                                      )
                                    ],
                                  );
                                }
                            );
                          }
                        });
                      },
                      child: Opacity(
                        opacity: 0.7,
                        child: Container(
                          color: Colors.yellow,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: new CircularPercentIndicator(
                                  radius: 100.0,
                                  animation: true,
                                  lineWidth: 15.0,
                                  percent: (red<0.0?0.0:red),
                                  center: new Text(
                                    ((red<0?0.0:red)*100).toInt().toString()+"%",
                                      style: GoogleFonts.baloo(
                                          textStyle: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.red
                                          )
                                      )
                                  ),
                                  progressColor: Colors.red,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: w/2.25),
                                child: new CircularPercentIndicator(
                                  radius: 100.0,
                                  animation: true,
                                  lineWidth: 15.0,
                                  percent: (blue<0?0.0:blue),
                                  center: new Text(
                                    ((blue<0?0.0:blue)*100).toInt().toString()+"%",
                                    style: GoogleFonts.baloo(
                                      textStyle: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.blue
                                      )
                                    ),
                                  ),
                                  progressColor: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          respond('3/');
                          blue-=0.1;
                          if(blue <= 0.0 || red <= 0.0){
                            showDialog(
                                context: context,
                                builder: (BuildContext con){
                                  return AlertDialog(
                                    title: Text("Game Over!"),
                                    content: Text((red<=0.0)?'Blue Win !':'Red Win !'),
                                    actions: [
                                      FlatButton(
                                        child: Text("Back to Dashboard"),
                                        onPressed: (){
                                          redC = new HP();
                                          DashboardRoute(context, data);
                                        },
                                      )
                                    ],
                                  );
                                }
                            );
                          }
                        });
                      },
                      child: Opacity(
                        opacity: 0.7,
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                    )
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          respond('1/');
                          blue-=0.05;
                          if(blue <= 0.0 || red <= 0.0){
                            showDialog(
                                context: context,
                                builder: (BuildContext con){
                                  return AlertDialog(
                                    title: Text("Game Over!"),
                                    content: Text((red<=0.0)?'Blue Win !':'Red Win !'),
                                    actions: [
                                      FlatButton(
                                        child: Text("Back to Dashboard"),
                                        onPressed: (){
                                          redC = new HP();
                                          DashboardRoute(context, data);
                                        },
                                      )
                                    ],
                                  );
                                }
                            );
                          }
                        });
                      },
                      child: Opacity(
                        opacity: 0.7,
                        child: Container(
                          color: Colors.blue,
                        ),
                      )
                    )
                  ),
                ],
              )
            ),
            MainDashboardButton(userData: data)
          ],
        ),
      ),
    );
  }
}