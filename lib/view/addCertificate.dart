import 'package:flutter/material.dart';

import '../utils/headerPage.dart';

class AdicionarCertificado extends StatefulWidget {
  @override
  State<AdicionarCertificado> createState() => _AdicionarCertificado();
}

class _AdicionarCertificado extends State<AdicionarCertificado> {
int numberCertificates = 1;
  Row GetCertificateAdd(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: EdgeInsets.only(top:10),
          child: FieldGenerator("Titulo Certificado"),
        ),
        Container(
          margin: EdgeInsets.only(top:10),
          child:FieldGenerator("Quantidade de horas")
        )
        ]
    );
  }

  SizedBox FieldGenerator(String fieldName){
    return SizedBox(
        width: 250,
        child: TextField(
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
                    child: ListView.builder(shrinkWrap: true,itemCount:numberCertificates ,itemBuilder: (_, index) {
                      return GetCertificateAdd();
                    })),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left:10),
                      child:IconButton(icon: Icon(Icons.add),
                          iconSize: 50,
                          onPressed: () => {
                        setState((){
                           numberCertificates++;
                        }
                        )
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith((
                                  states) => Colors.grey)
                          ))
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: () => {}, child: Text("Enviar certificados")),
                )
              ],
            )
        ),
      ),
    );
  }
}
