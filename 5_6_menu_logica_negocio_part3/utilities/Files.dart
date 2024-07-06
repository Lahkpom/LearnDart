import 'dart:io';
void Files(){
  try { 
    //*Ahora file hace referencia al archivo que creamos en donde se almacenará la información
    final file = File('../Tasks.txt');
    if(file.existsSync()){ //*Esto chequea que el archivo que queremos leer realmente exista
      final content = file.readAsStringSync(); //*Esto guarda el contenido del archivo en la variable
      String newContent = 'Hello world';
      file.writeAsStringSync(content + '\n' + newContent); 
      print('Content: ${content}');
    }else{
      throw new Exception("File doesn't exist");
    }
  } catch (e) {
    print(e.toString());
  }
}