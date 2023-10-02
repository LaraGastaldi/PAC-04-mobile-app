import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../view/studantScreen.dart';

class Newtwork  {

  static showAlertDialog1(BuildContext context)
  {
    // configura o button
    Widget okButton = ElevatedButton(
      child: Text("OK"),
      onPressed: () { },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Login Inválido ou senha inválido"),
      content: Text("Por favor, tente novamente!"),
      actions: [
        okButton,
      ],
    );
    // exibe o dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }


  static Criar(BuildContext context)
  {
    // configura o button
    Widget okButton = ElevatedButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ListCertificatesStudant()),
        );
      },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Certificado criado com sucesso."),
      content: Text("Agora seu certificado está pendente de aprovação."),
      actions: [
        okButton,
      ],
    );
    // exibe o dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }

  static bool ValidateUser(String email,String password){

    return (email == "vini" || email == "gui") && password == "123";
  }

  static bool GetPermissaoUser(String email){
    return email == "gui";
  }

}