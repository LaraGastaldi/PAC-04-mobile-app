import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../view/evaluatorScreen.dart';
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

  static Reprovar(BuildContext context)
  {
    // configura o button
    Widget okButton = ElevatedButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListCertificatesEvaluator())
        );
      },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Reprovado"),
      content: Text("O certificado foi reprovado!"),
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

  static Aprovar(BuildContext context)
  {
    // configura o button
    Widget okButton = ElevatedButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ListCertificatesEvaluator())
        );
      },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Aprovado"),
      content: Text("O certificado foi aprovado!"),
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
































  static void DefineInitialConfig()async{
    var prefs = await SharedPreferences.getInstance();

    prefs.setString("studantScreen1","10" );
    prefs.setString("studantScreen2","20" );
    prefs.setString("studantScreen3","30" );
    prefs.setString("studantScreen4","5" );
    prefs.setString("studantScreen5","9" );
    prefs.setString("studantScreen6","11" );
    prefs.setString("studantScreen7","12" );
    prefs.setInt("numberCertificates", 7);
  }

  static Future<String?> GetCertificate(String id)async{
    final prefs = await SharedPreferences.getInstance();
    var certificate =  prefs.getString("studantScreen" + id );

    return certificate;
  }

  static Future<int?> GetNumberCertificates()async{
    final prefs = await SharedPreferences.getInstance();

    return prefs.getInt("numberCertificates");
  }

  static bool ValidateUser(String email,String password){

    return (email == "vini" || email == "gui") && password == "123";
  }

  static bool GetPermissaoUser(String email){
    return email == "gui";
  }

}