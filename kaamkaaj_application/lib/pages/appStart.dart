import 'package:flutter/material.dart';
import 'package:kaamkaaj_application/main.dart';

class AppStart extends StatefulWidget {
  const AppStart({super.key, required this.title});

  final String title;

  @override
  State<AppStart> createState() => _AppStartState();
}

class _AppStartState extends State<AppStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 200, 0, 200),
              child: Image.asset(
                'assets/kaam-kaaj.png',
                width: 100,
              ),
            ),
            const Text(
              "Kaam Kaaj",
              style: TextStyle(
                  fontSize: 40, color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                    Navigator.pushNamed(context,'/signup');
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 20),
                    )),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,'/login');
                  },
                  child: const Text(
                    "login",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
