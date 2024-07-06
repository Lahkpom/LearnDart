void main(){
  //*for
  const limit = 10;
  for(int i = 0; i < limit; i++){
    print('i = ${i}');
  }

  List<String> lNames = ['Leonel', 'Alejandro', 'Facundo', 'Gabriel'];
  for(int i = 0; i < lNames.length; i++){
    print('Value of lNames by index ${i} = ${lNames[i]}');
  }

  //*for each
  for(String name in lNames){
    print('Name = ${name}');
  }

  lNames.forEach((element) {
    print('Element = ${element}');
  });
}