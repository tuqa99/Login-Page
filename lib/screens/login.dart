import 'package:flutter/material.dart';

import "./screen1.dart";

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final myEmail = TextEditingController();
  final myPassword = TextEditingController();
  String email = 'tuqa@gmail.com';
  String password = '1999';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Log in page")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 100,
              child: Image(image: AssetImage("images/2.png")),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
                controller: myEmail,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Please enter your email",
                    label: Text(
                      "Email",
                      style: TextStyle(fontSize: 25),
                    ),
                    prefixIcon: Icon(Icons.people)),
                maxLines: 1,
                maxLength: 20,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
                controller: myPassword,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Please enter your password",
                    label: Text(
                      "password",
                      style: TextStyle(fontSize: 25),
                    ),
                    prefixIcon: Icon(Icons.people)),
                maxLines: 1,
                maxLength: 20,
                textAlign: TextAlign.center,
                obscureText: true,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (myEmail.text == email && myPassword.text == password) {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Aftlogin();
                        },
                      ));
                    } else {
                      print(' Sorry your password or email is not correct');
                    }
                  });
                },
                child: Text("log-in"))
          ],
        ),
      ),
    );
  }
}
