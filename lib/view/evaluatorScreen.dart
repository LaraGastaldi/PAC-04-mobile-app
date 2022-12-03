import 'package:flutter/material.dart';

class ListCertificatesEvaluator extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(body: Container(
        child: SingleChildScrollView(
          child: Container(
            height: 60.0,
              decoration:  BoxDecoration(
                color: Color.fromARGB(100, 217,217,217),
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 217,217,217)
                  )
                )
              ),
              //padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 45.0,
                    child: Image.asset("assets/images/user_image.png",fit: BoxFit.contain),
                  ),
                  SizedBox(width: 10),
                  const Text(
                    "Certificados",
                    style:  TextStyle(
                      fontSize: 20,

                    ),
                  )
                ],
              )
          ),
        )
    )
    );
  }
}