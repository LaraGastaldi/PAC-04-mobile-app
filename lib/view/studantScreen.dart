import 'package:flutter/material.dart';

import 'package:pac_04/utils/network.dart';

import 'addCertificate.dart';
import 'certificateDetails.dart';
import 'certificateDetailsStudent.dart';

import 'certificateDetailsStudent.dart';
import 'addCertificate.dart';

class ListCertificatesStudant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int numberCertificates = 0;

    var numberCertificatesFuture = Newtwork.GetNumberCertificates();

    numberCertificatesFuture.then((value) =>
    numberCertificates = int.parse(value.toString()));

    ButtonStyle GetButtonStyle() {
      return ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
              Color.fromARGB(255, 217, 217, 217)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0))));
    }

    Container getCertificateRegister(String number) {
      return Container(
        width: 290,
        height: 110,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 217, 217, 217),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.all(20),
                width: 160,
                child: Column(
                  children: [
                    Text("Engenharia de software",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(height: 6),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.grey),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                      child: Text(
                        'Pendente',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      onPressed: () =>
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              CertificateDetails(Horas: number)),
                        )
                      },
                    ),
                  ],
                )),
            Container(
              width: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Horas:", style: TextStyle(fontSize: 10)),
                  Text(number + "h",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            IconButton(onPressed: () => {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CertificateDetailsStudent(Horas:number)),
              ),
            },
                icon: Icon(Icons.more_vert))
          ],
        ),
      );
    }

    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                  Container(
                      child: Text(
                        'Lista de Certificados',
                        style: TextStyle(fontSize: 30),
                      )),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                  height: 3,
                  color: Color.fromARGB(255, 217, 217, 217),
                  indent: 30,
                  endIndent: 30),
              Column(
                  children: [
                    getCertificateRegister("20"),
                    getCertificateRegister("20"),
                    getCertificateRegister("5"),
                    getCertificateRegister("7"),
                    getCertificateRegister("1"),
                    getCertificateRegister("3"),
                    getCertificateRegister("10"),
                  ]
              )
            ])
            ,
          )
          ,
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AdicionarCertificado()),
          );
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ));
  }
}
