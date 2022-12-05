import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

import '../utils/headerPage.dart';

class AdicionarCertificado extends StatelessWidget {
  Widget build(BuildContext context) {
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
                    child: Row(
                      children: [
                        SizedBox(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 100,
                            child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Quantidade de horas',
                                ))
                        ),
                        Stack(
                          children: [
                            DropzoneView(
                                onDrop: (e) => {print("Dropped")},
                                onDropMultiple: (e) => {print("Multiple")}
                            ),
                            Center(child: Text('Drop files here')),
                          ],
                        )
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left:10),
                      child:IconButton(icon: Icon(Icons.add),
                          iconSize: 50,
                          onPressed: () => {},
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
