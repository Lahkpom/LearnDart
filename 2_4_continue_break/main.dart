void main(){
  int counter = 0;
  
  for(int i = 0; i < 5; i++){
    for(int j = 0; j < 10; j++){
      counter++;
      print('counter = ${counter}');
      
    }
  }
  
  //*continue
  counter = 0;
  for(int i = 0; i < 5; i++){
    for(int j = 0; j < 10; j++){
      counter++;
      if(counter % 2 != 0){
        continue;
      }
      print('counter = ${counter}');
    }
  }

  //*break
  counter = 0;
  for(int i = 0; i < 5; i++){
    for(int j = 0; j < 10; j++){
      counter++;
      if(counter > 15){
        break;
      }
      print('counter = ${counter}');
    }
  }

}