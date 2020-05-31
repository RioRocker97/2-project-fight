import 'dart:io';

void initserver() async{
  double hp = 1.0;
  Future<ServerSocket> Futureserver = ServerSocket.bind('localhost',6969);
  Futureserver.then((ServerSocket server) async{
    print("Game Socket Server is opened !");
    server.listen((Socket client) {
      print('Connection from '
          '${client.remoteAddress.address}:${client.remotePort}');
      client.write("This is from server./");
      client.write("Hello,there./");
      client.write("Input Game Please./");
      client.listen((List<int> data) {
        String result = new String.fromCharCodes(data);
        var res = result.split('/');
        for(var i=0;i<res.length;i++){
          if(res[i].length != 0){
            print("client say: "+res[i]);
            if(res[i] == '1'){hp-=0.2;print("HP is now "+hp.toStringAsFixed(2));}
            else if(res[i] == '2'){hp-=0.1;print("HP is now "+hp.toStringAsFixed(2));}
            else if(res[i] == '3'){hp-=0.05;print("HP is now "+hp.toStringAsFixed(2));}

            if(hp <=0.01){
              print("HP is depleted! \nClosing Connection...");
              hp = 1.0;
              client.destroy();
              }

            //if(res[i] == 'end'){
             // print('Connection from '
             // '${client.remoteAddress.address}:${client.remotePort} is closed');
             // client.destroy();
            //}
          }
        }
      });
    });
  });
}

void main(){
  initserver();
}