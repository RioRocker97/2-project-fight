import 'dart:io';

void respond() async{
  String input;
  Future<Socket> client = Socket.connect('localhost',6969);
  client.then((Socket cli) async{
    //cli.write("How do you do,server ?/");
    //await Future.delayed(Duration(seconds: 1)).then((value) => cli.write("Are you done ?/"));
    cli.listen((List<int> data) {
      String result = new String.fromCharCodes(data);
      var res = result.split('/');
      for(var i=0;i<res.length;i++){
        if(res[i].length != 0)print("server say: "+res[i]);
      }
      while(input != 'end' ){
        stdout.write("Input game: ");
        input = stdin.readLineSync();
        cli.write(input+'/');
      }
    }).onDone(() {cli.destroy();});
  });
}
void main(){
  respond();
}