import 'package:flutter/material.dart';
import 'package:pac_04/model/User.dart';
import 'package:pac_04/view/navbar.dart';

import 'evaluatorScreen.dart';
import 'login.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  TelaLogin(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  void PushToLogin(){
    Navigator.push(context,
        MaterialPageRoute(
            builder: ((context) =>  TelaLogin())
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: NavBar(user: new User()),
      appBar: AppBar(
        title: Text('Católica App'),
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: ClipOval(
              child: Image.network(
                'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                fit: BoxFit.cover,
                width: 90,
                height: 90,
              ),
            )),
      ),
      body: Center(),
    );
  }
}
