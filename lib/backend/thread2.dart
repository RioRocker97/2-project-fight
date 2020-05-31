import 'dart:io';
import 'dart:core';
import 'dart:isolate';  
void loop1(SendPort port) async{
    await Future.delayed(Duration(seconds: 1)).then((value) => port.send("I like you"));
    port.send("I like you too");
    await Future.delayed(Duration(seconds: 2)).then((value) => port.send("I like you three"));
    port.send("end");
}
void loop2(SendPort port) async{
    await Future.delayed(Duration(seconds: 1)).then((value) => port.send("I love you"));
    port.send("I love you too");
    await Future.delayed(Duration(seconds: 3)).then((value) => port.send("I love you four"));
    port.send("end");
}
void loop3(SendPort port) async{
    await Future.delayed(Duration(seconds: 1)).then((value) => port.send("I hate you"));
    port.send("I hate you too");
    await Future.delayed(Duration(seconds: 4)).then((value) => port.send("I hate you five"));
    port.send("end");
}
Isolate isolate1;
Isolate isolate2;

Isolate isolate3;
Isolate isolate4;

Isolate isolate5;
Isolate isolate6;
void main() async{
  Stopwatch mytime = new Stopwatch();
  mytime.start();
  ReceivePort port1 = ReceivePort();
  ReceivePort port2 = ReceivePort();
  ReceivePort port3 = ReceivePort();
  ReceivePort port4 = ReceivePort();
  ReceivePort port5 = ReceivePort();
  ReceivePort port6 = ReceivePort();
  isolate1 =  await Isolate.spawn(loop1,port1.sendPort);
  isolate2 =  await Isolate.spawn(loop1,port2.sendPort);
  isolate3 =  await Isolate.spawn(loop2,port3.sendPort);
  isolate4 =  await Isolate.spawn(loop2,port4.sendPort);
  isolate5 =  await Isolate.spawn(loop3,port5.sendPort);
  isolate6 =  await Isolate.spawn(loop3,port6.sendPort);
  port1.listen((data) {
    print("Isolate 1 Data :" + data);
    if(data=='end'){
      port1.close();
      isolate1.kill();
    }
  });
  port2.listen((data) {
    print("Isolate 2 Data :" + data);
    if(data=='end'){
      port2.close();
      isolate2.kill();
    }
  });
  /////////////////////////////////////////////
  port3.listen((data) {
    print("Isolate 3 Data :" + data);
    if(data=='end'){
      port3.close();
      isolate3.kill();
    }
  });
  port4.listen((data) {
    print("Isolate 4 Data :" + data);
    if(data=='end'){
      port4.close();
      isolate4.kill();
    }
  });
  /////////////////////////////////////////////
  port5.listen((data) {
    print("Isolate 5 Data :" + data);
    if(data=='end'){
      port5.close();
      isolate5.kill();
    }
  });
  port6.listen((data) {
    print("Isolate 6 Data :" + data);
    if(data=='end'){
      port6.close();
      isolate6.kill();
      mytime.stop();
      print("Time :"+mytime.elapsedMilliseconds.toString());
    }
  });
}