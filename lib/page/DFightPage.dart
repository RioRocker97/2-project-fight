import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:projectfight2/backend/myArrayDatabase.dart';
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
  double red = 1.0;
  double blue = 1.0;
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
              child: Column(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          red -= 0.1;
                        });
                      },
                      child: Container(
                        color: Colors.grey,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: new CircularPercentIndicator(
                                radius: 100.0,
                                animation: true,
                                lineWidth: 15.0,
                                percent: red,
                                center: new Text((red*100).toInt().toString()+"%"),
                                progressColor: Colors.red,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: w/2.25),
                              child: new CircularPercentIndicator(
                                radius: 100.0,
                                animation: true,
                                lineWidth: 15.0,
                                percent: blue,
                                center: new Text((blue*100).toInt().toString()+"%"),
                                progressColor: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          blue-=0.1;
                        });
                      },
                      child: Container(
                        color: Colors.green,
                      ),
                    )
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        color: Colors.blue,
                      ),
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