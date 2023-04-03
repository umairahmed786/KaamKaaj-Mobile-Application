import 'package:flutter/material.dart';
import 'package:kaamkaaj_application/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
            color: primaryBlack,
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: Row(
            children: [
              Image.asset(
                'assets/kaam-kaaj.png',
                width: 30,
              ),
              const Text(
                "Kaam Kaaj",
                style:
                    TextStyle(color: primaryBlack, fontWeight: FontWeight.w900),
              ),
            ],
          )),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 100, 10, 0),
            child: Image.asset(
              'assets/login vector.webp',
              width: 400,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            width: 300,
            child: TextFormField(
              decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.mail),
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            width: 300,
            child: TextFormField(
              decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.lock),
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          SizedBox(
            width: 300,
            child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 20),
                )),
          )
        ],
      ),
    );
  }
}
