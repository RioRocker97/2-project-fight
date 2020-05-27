import 'dart:io';

void respond(String s) async{
  String input ;
  Future<Socket> client = Socket.connect('localhost',6969);
  client.then((Socket cli) async{
    cli.listen((List<int> data) async{
      String result = new String.fromCharCodes(data);
      var res = result.split('/');
      for(var i=0;i<res.length;i++){
        if(res[i].length != 0)print("server say: "+res[i]);
      }
      cli.write(s);
      cli.destroy();
    });
  });
}