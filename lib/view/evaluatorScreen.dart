import 'package:flutter/material.dart';

import '../utils/headerPage.dart';

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

    Container GetCertificateRegister(){
      return Container(
        width: 290,
        height: 110,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 217,217,217),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            Container(
              width:80,
              margin: EdgeInsets.all(10),
              child: Image.asset("assets/images/user_image.png",fit: BoxFit.contain),
            ),
            Container(
                width: 182,
                child:Column(
                  children: [
                    Row(
                      children: [
                        Text("Engenharia de software",style:TextStyle(fontSize: 12,fontWeight:FontWeight.bold)),
                        IconButton(onPressed: ()=>{},icon:Icon(Icons.more_vert))
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle,color: Colors.grey,size: 12),
                        SizedBox(width: 2),
                        Text("Vinicius Aluno",style:TextStyle(fontSize: 10))
                      ],
                    ),
                    SizedBox(height: 3),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.all(3),
                          child: Column(
                              children: [
                                Text("Horas:",style: TextStyle(fontSize: 10)),
                                Text("00h",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold))
                              ]
                          ),
                        )
                      ],
                    )
                  ],
                )
            )
          ],
        ),
      );
    }

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(children: <Widget>[
          Header.GetHeader("Certificados Pendentes"),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonBar(
                children: [
                  SizedBox(
                      width: 125,
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
          Divider(height: 3,color: Color.fromARGB(255, 217, 217, 217),indent: 30,endIndent: 30),
          Container(
            child:Column(
              children: [
                GetCertificateRegister(),
                GetCertificateRegister(),
                GetCertificateRegister(),
                GetCertificateRegister(),
                GetCertificateRegister(),
                GetCertificateRegister(),
                GetCertificateRegister(),
              ],
            )
          )
        ]),
      ),
    ));
  }
}
