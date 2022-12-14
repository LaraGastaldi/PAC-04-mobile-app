import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pac_04/utils/network.dart';

import '../utils/headerPage.dart';

class AdicionarCertificado extends StatefulWidget {
  @override
  State<AdicionarCertificado> createState() => _AdicionarCertificado();
}

class _AdicionarCertificado extends State<AdicionarCertificado> {
  var nomeCursoController = new TextEditingController();
  var nomeCertificadoController = new TextEditingController();
  var horasCertificadoController = new TextEditingController();

  FirebaseFirestore db = FirebaseFirestore.instance;


  void AddCertificate() {
    try {
      final certificate = <String, dynamic>{
        "nomeCurso": nomeCursoController.text,
        "nomeCertificado": nomeCertificadoController.text,
        "horasCertificado":horasCertificadoController.text
      };


      db.collection("certificate").add(certificate).then((DocumentReference doc) =>
          print('DocumentSnapshot added with ID: ${doc.id}'));
    }
    catch (err) {
      debugPrint(err.toString());
    }
  }

  int numberCertificates = 1;

  Row GetCertificateAdd() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: FieldGenerator("Titulo Certificado",nomeCertificadoController),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: FieldGenerator("Horas",horasCertificadoController)
          )
        ]
    );
  }

  SizedBox FieldGenerator(String fieldName,TextEditingController controller) {
    return SizedBox(
        width: 250,
        child: TextField(
          controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: fieldName,
            ))
    );
  }

  Widget build(BuildContext context) {
    var listCertificates = <Widget>[];
    listCertificates.add(GetCertificateAdd());

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Header.GetHeader("Adicionar Certificado"),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text("Informe o nome do curso:"),
                      SizedBox(height: 5),
                      SizedBox(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          height: 30,
                          child: Container(
                            height: 36,
                            child: TextField(
                              controller:nomeCursoController,
                              maxLines: 1,
                              style: TextStyle(fontSize: 17),
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30))),
                                fillColor: Theme
                                    .of(context)
                                    .inputDecorationTheme
                                    .fillColor,
                                contentPadding: EdgeInsets.only(left: 5),
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Container(
                    width: 800,
                    child: ListView.builder(shrinkWrap: true,
                        itemCount: numberCertificates,
                        itemBuilder: (_, index) {
                          return GetCertificateAdd();
                        })),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: () =>
                      {
                        AddCertificate(),
                        Newtwork.Criar(context)
                      }, child: Text("Enviar certificados")),
                )
              ],
            )
        ),
      ),
    );
  }
}
