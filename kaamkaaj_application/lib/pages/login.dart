import 'package:flutter/material.dart';
import 'package:kaamkaaj_application/main.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String validationError = "";
  void sendReq() async {
    var email = emailController.text.toString();
    var password = passController.text.toString();

    http.Response response = await http
        .get(Uri.parse('http://192.168.1.9:8001/signin/$email/$password'));

    if (response.body.isEmpty) {
      validationError = "Incorrect Email or Password";
    } else {
      validationError = "";
      passController.clear();
      emailController.clear();
      //navigate user to dashboard
    }
  }

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
                  style: TextStyle(
                      color: primaryBlack, fontWeight: FontWeight.w900),
                ),
              ],
            )),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 50, 10, 0),
                child: Image.asset(
                  'assets/login vector.webp',
                  width: 400,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                width: 300,
                child: TextFormField(
                  controller: emailController,
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
                  obscureText: true,
                  controller: passController,
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
                    onPressed: () {
                      if (emailController.text.isNotEmpty &&
                          passController.text.isNotEmpty) {
                        setState(() {
                          validationError = "";
                        });
                        sendReq();
                      } else {
                        setState(() {
                          validationError = "Fill All Fields";
                        });
                      }
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              validationError != ""
                  ? Text(
                      validationError,
                      style: const TextStyle(color: Colors.red),
                    )
                  : const Text("")
            ],
          ),
        ));
  }
}
