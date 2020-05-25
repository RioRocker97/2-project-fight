import 'dart:io';

void initserver() async{
  Future<ServerSocket> Futureserver = ServerSocket.bind('localhost',6969);
  Futureserver.then((ServerSocket server) async{
    print("Server is opened! ${server.address} ${server.port}");
    server.listen((Socket client) {
      print('Connection from '
          '${client.remoteAddress.address}:${client.remotePort}');
      client.write("This is from server/");
      client.write("Hello,there/");
      client.listen((List<int> data) {
        String result = new String.fromCharCodes(data);
        var res = result.split('/');
        for(var i=0;i<res.length;i++){
          if(res[i].length != 0)print("client say: "+res[i]);
        }
      });
    });
  });
}