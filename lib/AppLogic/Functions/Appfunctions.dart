

String? validateEmail(String? email){
  if(email!.isEmpty){
    return " field can't be empty";
  }
  return null;
}

String? validatePassword(String? password){
  if(password!.isEmpty){
    return " field cant be empty";
  }
  return null;
}

String? validateName(String? name){
  if(name!.isEmpty){
    return " field cant be empty";
  }
  return null;
}

String? validateLastName(String? lastname){

}