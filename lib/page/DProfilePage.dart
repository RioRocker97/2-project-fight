import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectfight2/backend/myArrayDatabase.dart';
import 'package:projectfight2/widget/display.dart';

class DProfilePage extends StatefulWidget{
  DProfilePage({this.mydata});
  AllUser mydata;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfilePage(mydata);
  }
}
class ProfilePage extends State<DProfilePage>{
  ProfilePage(this.data);
  AllUser data;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = 8*(MediaQuery.of(context).size.height)/10;
    int c = data.CurrentUser;
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('public/regular.jpg'),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            children: [
              Opacity(
                opacity: 0.7,
                child: Container(
                  width: w,
                  height: h,
                  color: Colors.greenAccent,
                  child: Column(
                    children: [
                      Padding(
                        padding:EdgeInsets.only(top: h/10),
                        child: CircleProfilePic('public/dafault1.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: h/20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text("Fighter",style: GoogleFonts.baloo(
                                    textStyle: TextStyle(
                                        fontSize: 40.0,color: Colors.white
                                    )
                                )),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Text("Gender",style: GoogleFonts.baloo(
                                    textStyle: TextStyle(
                                        fontSize: 40.0,color: Colors.white
                                    )
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: h/40),
                        child: Row(
                          children: [
                            Expanded(
                                child: Center(
                                    child: Text(data.name[c],style: GoogleFonts.baloo(
                                        textStyle: TextStyle(
                                            fontSize: 40.0,color: Colors.blue
                                        )
                                    ))
                                )
                            ),
                            Expanded(
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                child: ClipRRect(
                                  child: Image(
                                    image: AssetImage((data.gender[c]==1?'public/boy.png':'public/girl.png')),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: h/20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text("Age",style: GoogleFonts.baloo(
                                    textStyle: TextStyle(
                                        fontSize: 40.0,color: Colors.white
                                    )
                                )),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Text("Status",style: GoogleFonts.baloo(
                                    textStyle: TextStyle(
                                        fontSize: 40.0,color: Colors.white
                                    )
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: h/40),
                        child: Row(
                          children: [
                            Expanded(
                                child: Center(
                                  child: Text(data.age[c].toString(),style: GoogleFonts.baloo(
                                      textStyle: TextStyle(
                                          fontSize: 40.0,color: Colors.blue
                                      )
                                  )),
                                )
                            ),
                            Expanded(
                                child: Center(
                                  child: Text(data.fightStat[c].toString(),style: GoogleFonts.baloo(
                                      textStyle: TextStyle(
                                          fontSize: 40.0,color: Colors.blue
                                      )
                                  )),
                                )
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              MainDashboardButton(userData: data,)
            ],
          ),
        ),
      ),
    );
  }
}