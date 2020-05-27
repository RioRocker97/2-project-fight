import 'dart:io';

class HP {
  double hp ;

  HP(){
    this.hp = 1.0;
  }
  void initserver() async{
    Future<ServerSocket> Futureserver = ServerSocket.bind('localhost',6969,shared: true);
    Futureserver.then((ServerSocket server) async{
      print("Game Socket Server is opened !");
      server.listen((Socket client) {
        print('Connection from '
            '${client.remoteAddress.address}:${client.remotePort}');
        client.write("This is from server./");
        client.listen((List<int> data) {
          String result = new String.fromCharCodes(data);
          var res = result.split('/');
          for(var i=0;i<res.length;i++){
            if(res[i].length != 0){
              print("client say: "+res[i]);
              if(res[i] == '1'){this.hp-=0.2;print("HP is now "+this.hp.toStringAsFixed(2));}
              else if(res[i] == '2'){this.hp-=0.1;print("HP is now "+this.hp.toStringAsFixed(2));}
              else if(res[i] == '3'){this.hp-=0.05;print("HP is now "+this.hp.toStringAsFixed(2));}

              if(this.hp <=0.00){
                print("HP is depleted! \nClosing Connection...");
                client.destroy();
              }
            }
          }
        });
      });
    });
  }
}

