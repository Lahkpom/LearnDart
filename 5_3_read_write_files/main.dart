//*Nos permite utilizar la herramienta para importar archivos
import 'dart:io';
void main(){
  try { 
    //*Ahora file hace referencia al archivo que creamos en donde se almacenará la información
    final file = File('./Tasks.txt');
    if(file.existsSync()){ //*Esto chequea que el archivo que queremos leer realmente exista
      final content = file.readAsStringSync(); //*Esto guarda el contenido del archivo en la variable

      String newContent = 'Hello world';

      //*Agarramos lo que el archivo ya tiene, y con un salto de lína le agregamos el nuevo contenido
      file.writeAsStringSync(content + '\n' + newContent); 
      
      

      print('Content: ${content}');
      













    }else{
      throw new Exception("File doesn't exist");
    }
  } catch (e) {
    print(e.toString());
  }
}