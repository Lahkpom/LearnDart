void main(){
  //*Son funciones lambda
  //*Enviar una funcion como parámetro

  void ejecutar(Function funcion){
    funcion();
  }

  void suma(int a, int b){
    print(a + b);
  }

  //*Hay que generar una funcion anonima ya que no puedo enviar una funcion comun
  //*Asimismo, dentro de esta funcion anonima se puede agregar conetnido que no estaba originalmente
  ejecutar((){
    print('Desde dentro de la funcion anonima');
    suma(5, 4);
  });


  //*Que retorne un valor
  void ejecutarValor(Function(int) funcion, int a){
    funcion(a);
  }

  ejecutarValor((a){
    print(a);
    suma(7, 8);
  }, 60);

}