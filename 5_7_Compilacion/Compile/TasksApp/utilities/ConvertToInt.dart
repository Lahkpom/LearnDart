int ConvertToInt(String? choice){
  print('step2');
  int i;
  try {
    i = int.parse(choice!);
  } catch (e) {
    i = 0;
    print('\nTHE INPUT MOST BE AN INTEGER');
  }
  return i;
}