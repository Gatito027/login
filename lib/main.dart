import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fluter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Container(
        child: _login(),
      ),
    );
  }
}

class _login extends StatefulWidget {
  const _login({super.key});

  @override
  State<_login> createState() => __loginState();
}

class __loginState extends State<_login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                blurRadius: 20.0,
                spreadRadius: 5.0,
                offset: Offset(5.0, 5.0))
          ],
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 50),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/workv3.png",
                height: 160,
              ),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: "username@correo.com",
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 100),
              Text("¿Nuevo Usuario? crea una cuenta")
            ],
          ),
        ),
      ),
    );
  }
}
