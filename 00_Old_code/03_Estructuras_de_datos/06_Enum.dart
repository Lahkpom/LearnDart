enum talle{
  xs, s, m, l, xl, xxl
}

void main(){
  talle aux = talle.xl;

  print(aux.name);
  print(aux.index);
  
  String aux2 = aux.name;
  String aux3 = aux.toString();
  int aux4 = aux.name.length;
  String aux5 = aux.name.toString();
  String aux6 = aux.name.toUpperCase();

  print(aux2);
  print(aux3);
  print(aux4);
  print(aux5);
  print(aux6);
  
  

}


