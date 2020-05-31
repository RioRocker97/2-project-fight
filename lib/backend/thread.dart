import 'dart:isolate';  
gettext(var text){
  print("someone say : $text");
}
gettext2(var text) async{
  await Future.delayed(Duration(seconds: 1));
  print("someone say : $text");
}
gettext3(var text) async{
  await Future.delayed(Duration(seconds: 10));
  print("someone say : $text");
}
gettext4(var text) async{
  Future.delayed(Duration(seconds: 3)).then((value) => print("someone say : $text"));
  //print("someone say : $text");
}
getloop(var text) async{
  int i = 0;
  while(i<500){i++;}
  print("$i someone say : $text");
}
void main() async{
  Isolate.spawn(getloop,"Hello Loop");
  Isolate.spawn(getloop,"Hello Loop2");
  Isolate.spawn(getloop,"Hello Loop3");
  Isolate.spawn(getloop,"Hello Loop4");
  await Isolate.spawn(gettext4,"Hello Late5");
  gettext3("Hello you too");
  gettext2("Hello you");
  gettext("Hello");
}