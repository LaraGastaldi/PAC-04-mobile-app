import 'package:flutter/cupertino.dart';

class Header {
  static Container GetHeader(String namePage) {
    return Container(
      height: 50,
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
            Text(
              namePage,
              style: TextStyle(fontSize: 20),
            )
          ],
        ));
  }
}