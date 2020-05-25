import 'dart:io';

void respond() async{
  Future<Socket> client = Socket.connect('localhost',6969);
  client.then((Socket cli){
    cli.write("How do you do,server ?/");
    cli.listen((List<int> data) {
      String result = new String.fromCharCodes(data);
      var res = result.split('/');
      for(var i=0;i<res.length;i++){
        if(res[i].length != 0)print("server say: "+res[i]);
      }
    });
    cli.close();
  });
}