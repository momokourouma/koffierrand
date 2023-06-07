

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
      if(lastname!.isEmpty){
        return "name cant be empty";
      } return null;
}

String? validateDateNaissance(String? dateDeNaissance){
  if(dateDeNaissance!.isEmpty){
    return "name cant be empty";
  }return null;
}

String? validateNationaity(String? nationality){
  if(nationality!.isEmpty){
    return "cant be empty";
  }return null;
}


String? validatedepartment(String? department){
  if(department!.isEmpty){
    return "cant be empty";
  }return null;
}

String? validatePayDepart(String? depart){
  if(depart!.isEmpty){
    return "cant be empty";
  }return null;
}
String? validateDateArv(String? depart){
  if(depart!.isEmpty){
    return "cant be empty";
  }return null;
}




String? validateVol(String? vol) {
  if (vol!.isEmpty) {
    return "cant be empty";
  }
  return null;
}

String? validateHeureArv(String? heureArv){
  if(heureArv!.isEmpty){
    return "cant be empty";
  }return null;
}

///Paymenthouse validator
String? validatePayPrenom(String? prenom){
  if(prenom!.isEmpty){
    return "cant be empty";
  }return null;
}
String? validatePayNom(String? nom){
  if(nom!.isEmpty){
    return "cant be empty";
  }return null;
}
String? validatePayEmail(String? nom){
  if(nom!.isEmpty){
    return "cant be empty";
  }return null;
}

String? validatePayCreditcard(String? nom){
  if(nom!.isEmpty){
    return "cant be empty";
  }return null;
}
String? validatePayMontant(String? nom){
  if(nom!.isEmpty){
    return "cant be empty";
  }return null;
}

/// register validator
String? validateRegisterEmail(String? email){
  if(email!.isEmpty){
    return "cant be empty";
  }return null;
}

String? validateRegisterPassword(String? password){
  if(password!.isEmpty){
    return "cant be empty";
  }return null;
}

String? validateRegisterRetypePassword(String? password){
  if(password!.isEmpty){
    return "cant be empty";
  }return null;
}


