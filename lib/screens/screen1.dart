import 'package:flutter/material.dart';

class Aftlogin extends StatefulWidget {
  const Aftlogin({super.key});

  @override
  State<Aftlogin> createState() => _AftloginState();
}

class _AftloginState extends State<Aftlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 197, 236, 255),
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: const [
              Text(
                'Wellcome Tuqa.... ',
                style: TextStyle(fontSize: 22, fontFamily: "DancingScript"),
              ),
              SizedBox(
                width: 170,
              ),
              CircleAvatar(
                radius: 33,
                child: Image(
                  image: AssetImage('images/2.png'),
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          )
        ],
      ),
    );
  }
}
