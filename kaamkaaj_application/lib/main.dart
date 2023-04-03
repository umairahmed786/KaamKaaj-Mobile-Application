import 'package:flutter/material.dart';
import 'package:kaamkaaj_application/pages/appStart.dart';
import './pages/appStart.dart';
import './pages/login.dart';
import './pages/signup.dart';

void main() {
  runApp(const MyApp());
}

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KaamKaaj Mobile App',
      initialRoute: '/',
      routes: {
        '/': (context) =>  AppStart(title: "Kaam Kaaj"),
        '/login':(context) => LoginPage(),
        '/signup':(context) => SihnUp(),
        // '/login':(context) => 
        // '/second': (context) => const SecondScreen(),
      }
    );
  }
}
