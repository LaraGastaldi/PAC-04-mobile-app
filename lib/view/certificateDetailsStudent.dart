import 'package:flutter/material.dart';

import '../utils/headerPage.dart';

class CertificateDetailsStudent extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: <Widget>[
            Header.GetHeader("Detalhes"),
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text("Engenharia de Software",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.circle, color: Colors.grey, size: 25),
                      SizedBox(width: 2),
                      Text("Vinicius Aluno", style: TextStyle(fontSize: 20))
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text("Documento:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                  ),
                  Center(
                      child: Container(
                          width: 450,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 217, 217, 217),
                          borderRadius: BorderRadius.circular(7)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.insert_drive_file_outlined),
                              SizedBox(width:20),
                              Text("Documento", style: TextStyle(fontSize: 15)),
                              SizedBox(width: 100),
                              Column(
                                children: [
                                  Text("Horas:",
                                      style: TextStyle(fontSize: 10)),
                                  Text("00h",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              IconButton(
                                  onPressed: () => {},
                                  icon: Icon(Icons.more_vert))
                            ],
                          ))),
                  SizedBox(height: 10),
                  Text("Status: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    padding: EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 141, 141, 141)),
                    child: Text("Pendente",
                        style: TextStyle(fontSize: 15,letterSpacing: 1.3,color: Colors.white,fontWeight:FontWeight.bold)),
                  ),
                  SizedBox(height: 30),
                  Text("Avaliação: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () => {},
                          child: Text("Reprovar"),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith((states) => Colors.red),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(18),
                                          topLeft:Radius.circular(18)
                                      ))))),
                      SizedBox(
                        width: 3,
                      ),
                      ElevatedButton(
                          onPressed: () => {},
                          child: Text("Aprovar"),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(18),
                                          topRight:Radius.circular(18)
                                      )))))
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
