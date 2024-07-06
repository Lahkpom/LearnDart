void IterateTasks(final content){
  print('');
  int i = 0;
  content.forEach((element) {
    final aux = element.split('|');
    print('${i}: ${aux[0]}');
    i++;
  });
}