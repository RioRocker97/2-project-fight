class AllUser{
  List name = [
    'ChangNoi','Alex','Jame','Nicole',
    'Sabrina','Malena','Hamota','Bryci',
  ];
  List username = [
    'chang','alex','jame','nicol23',
    'saby47','sexygirlalive','japanese','stepbrother',
  ];
  List password = [
    'c997','hd7990','cupoftea69','HeeHee',
    'daddygirl45','bigboobz','252525','18only',
  ];
  List gender = [
    1,1,1,2,
    2,1,2,1
  ];
  List age = [
    25,27,35,20,
    19,24,32,40
  ];
  List fightStat = [
    4,1,3,4,
    2,2,1,3
  ];
  int CurrentUser;
  ///////////////////////////////////////////////////////
  AllUser(){
    this.CurrentUser = 0;
  }
  void newUser(String n,String u,String p,int g,int ag){
    this.name.add(n);
    this.username.add(u);
    this.password.add(p);
    this.gender.add(g);
    this.age.add(ag);
    this.fightStat.add(1);
    this.CurrentUser = this.name.length - 1;
  }
  bool checkUser(String u,String p){
    for(int i=0;i<this.name.length;i++){
      if(this.username[i] == u){
        if(this.password[i] == p){
          print("Access Granted!");
          this.CurrentUser = i;
          return true;
        }
        else{
          print("Access Denied");
          return false;
        }
      }
    }
    print("User not found");
    return false;
  }
  List getOtherFighter(){
    List fighter = new List();
    for(int i=0;i<this.name.length;i++){
      if(i!=this.CurrentUser){
        fighter.add(this.name[i]);
      }
    }
    return fighter;
  }

}