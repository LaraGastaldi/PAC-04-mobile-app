import 'package:flutter/material.dart';

import 'evaluatorScreen.dart';
import 'studantScreen.dart';



class TelaLogin extends StatelessWidget  {

  TextStyle style = TextStyle(fontFamily: 'Montserrat',fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
     final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Senha",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final buttonLogin = ElevatedButton(
      onPressed: () {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListCertificatesStudant()),
      );
      },
      child: Text('Entrar'),
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size((MediaQuery.of(context).size.width*0.6), (MediaQuery.of(context).size.height*0.05))),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              )
          )
      ),
    );
    return Scaffold(body: Center(
        child: SingleChildScrollView(
          child: Container(
              color: Color(0xC9FAFAFA),
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 150.0,
                    child: Image.asset("assets/images/user_image.png",fit: BoxFit.contain),
                  ),
                  SizedBox(height: 40.0),emailField,
                  SizedBox(height: 20.0),passwordField,
                  SizedBox(height: 30.0),buttonLogin,
                ],
              )
          ),
        )
    )
    );
  }
}