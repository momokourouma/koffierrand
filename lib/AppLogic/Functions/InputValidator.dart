

String? validateEmail(String? email){
  if(email!.isEmpty){
    return " le champs ne peut etre vide";
  }
  return null;
}

String? validatePassword(String? password){
  if(password!.isEmpty){
    return " le champs ne peut etre vide";
  }
  return null;
}

String? validateName(String? name){
  if(name!.isEmpty){
    return " le champs ne peut etre vide";
  }
  return null;
}

String? validateLastName(String? lastname){
      if(lastname!.isEmpty){
        return "le champs ne peut etre vide";
      } return null;
}

String? validateDateNaissance(String? dateDeNaissance){
  if(dateDeNaissance!.isEmpty){
    return "le champs ne peut etre vide";
  }return null;
}

String? validateNationaity(String? nationality){
  if(nationality!.isEmpty){
    return "le champs ne peut etre vide";
  }return null;
}


String? validatedepartment(String? department){
  if(department!.isEmpty){
    return "le champs ne peut etre vide";
  }return null;
}

String? validatePayDepart(String? depart){
  if(depart!.isEmpty){
    return "le champs ne peut etre vide";
  }return null;
}
String? validateDateArv(String? depart){
  if(depart!.isEmpty){
    return "le champs ne peut etre vide";
  }return null;
}




String? validateVol(String? vol) {
  if (vol!.isEmpty) {
    return "le champs ne peut etre vide";
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
    return "le champs ne peut etre vide";
  }return null;
}
String? validatePayNom(String? nom){
  if(nom!.isEmpty){
    return "le champs ne peut etre vide";
  }return null;
}
String? validatePayEmail(String? nom){
  if(nom!.isEmpty){
    return "le champs ne peut etre vide";
  }return null;
}

String? validatePayCreditcard(String? nom){
  if(nom!.isEmpty){
    return "le champs ne peut etre vide";
  }return null;
}
String? validatePayMontant(String? nom){
  if(nom!.isEmpty){
    return "le champs ne peut etre vide";
  }return null;
}

/// register validator
String? validateRegisterEmail(String? email){
  if(email!.isEmpty){
    return "le champs ne peut etre vide";
  }return null;
}

String? validateRegisterPassword(String? password){
  if(password!.isEmpty){
    return "le champs ne peut etre vide";
  }return null;
}

String? validateRegisterRetypePassword(String? password){
  if(password!.isEmpty){
    return "le champs ne peut etre vide";
  }return null;
}


