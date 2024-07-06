String ValidateName(String? name){
  if (name == null || name.isEmpty) {
    name = 'New task';
  }
  return name;
}