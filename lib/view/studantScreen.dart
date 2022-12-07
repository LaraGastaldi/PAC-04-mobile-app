import 'package:flutter/material.dart';
import 'certificateDetailsStudent.dart';
import 'addCertificate.dart';

class ListCertificatesStudant extends StatelessWidget {
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

    Container GetCertificateRegister() {
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
                      onPressed: () {},
                    ),
                  ],
                )),
            Container(
              width: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Horas:", style: TextStyle(fontSize: 10)),
                  Text("00h",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            IconButton(onPressed: () => {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CertificateDetailsStudent()),
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
          Container(
              child: Column(
            children: [
              GetCertificateRegister(),
              GetCertificateRegister(),
              GetCertificateRegister(),
              GetCertificateRegister(),
              GetCertificateRegister(),
              GetCertificateRegister(),
              GetCertificateRegister(),
            ],
          ))
        ]),
      ),
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
      ),);
  }
}
