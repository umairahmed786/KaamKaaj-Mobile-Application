import 'dart:convert';

import 'package:http/http.dart' as http;



class Add{
  Future<void> addRecord(String userName,String email,String password,String address,String role)async{
    print("Reached");
    http.post(
    Uri.parse('http://localhost:8001/signup'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'userName': userName,
      'email':email,
      'password':password,
      'address':address,
      'role':role
    }),
  );
  }
}