import 'package:flutter/material.dart';
import 'package:kaamkaaj_application/pages/user_profile/about.dart';
import 'package:kaamkaaj_application/pages/user_profile/portfolio.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  TextEditingController username = TextEditingController();
  String currentTab = 'About';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.network(
                  'https://fastly.picsum.photos/id/1074/400/400.jpg?hmac=eH9O4qH8NQGitzB3QaCq9jrbDZr7KQkaW_w17w0uoGM',
                  height: 80,
                  fit: BoxFit.contain,
                ),
              ),
              TextField(
                controller: username,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Huzaifa Khan',
                    hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 1,
                        letterSpacing: 0)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(
                    '5.0',
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 1,
                      primary: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        currentTab = 'About';
                      });
                    },
                    child: Text("About", style: TextStyle(color: Colors.black)),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 1,
                          primary: Colors.white,
                          shadowColor: Colors.white),
                      onPressed: () {
                        setState(() {
                          currentTab = 'Portfolio';
                        });
                      },
                      child: Text(
                        "Portfolio",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 0.1,
                color: Colors.black,
              ),
              currentTab == 'About' ? About() : Portfolio(),
            ],
          ),
        ),
      ),
    );
  }
}
