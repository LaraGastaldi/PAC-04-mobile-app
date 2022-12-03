import 'package:flutter/material.dart';

class ListCertificatesEvaluator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ButtonStyle GetButtonStyle() {
      return ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
              Color.fromARGB(255, 217, 217, 217)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0))));
    }

    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(100, 217, 217, 217),
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 217, 217, 217)))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 45.0,
                      child: Image.asset("assets/images/user_image.png",
                          fit: BoxFit.contain)),
                  SizedBox(width: 10),
                  const Text(
                    "Certificados",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              )),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonBar(
                children: [
                  SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () => {},
                          child: Text("Curso",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 141, 141, 141))),
                          style: GetButtonStyle())),
                  SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () => {},
                          child: Text("Fase",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 141, 141, 141))),
                          style: GetButtonStyle()))
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          Divider(height: 3,color: Color.fromARGB(255, 217, 217, 217),indent: 30,endIndent: 30)
        ]),
      ),
    ));
  }
}
