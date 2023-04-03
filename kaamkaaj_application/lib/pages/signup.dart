import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import '../services/addUser.dart';

class SihnUp extends StatefulWidget {
  const SihnUp({super.key});

  @override
  State<SihnUp> createState() => _SihnUpState();
}

class _SihnUpState extends State<SihnUp> {
  TextEditingController userNameController = TextEditingController(); 
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController(); 
  TextEditingController passwordController = TextEditingController();
  bool statusController=true;
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return 
    Scaffold(
      body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text("Sign Up",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30),
                        child: TextFormField(
                        // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'UserName',
                            hintText: 'Enter username'
                          ),
                          maxLength: 15,
                          controller: userNameController,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30),
                        child: TextFormField(
                        // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty || !EmailValidator.validate(value)) {
                              return 'Please enter email in correct format';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            hintText: 'Enter email'
                          ),
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30),
                        child: TextFormField(
                        // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Enter password'
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          controller: passwordController,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30),
                        child: TextFormField(
                        // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter address';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Address',
                            hintText: 'Enter address'
                          ),
                          maxLines: 3,
                          
                          controller: addressController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 200),
                        child: ElevatedButton(
                          onPressed: ()async {
                            if (_formKey.currentState!.validate()) {
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   const SnackBar(content: Text('Processing Data')),
                              // );
                              Add addUser1=Add();
                              await addUser1.addRecord(userNameController.text,emailController.text,passwordController.text,addressController.text,"client");
                              Navigator.popAndPushNamed(context, '/login');
                            }
                          },
                          child: const Text('SignUp as Client '),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 200),
                        child: ElevatedButton(
                          onPressed: ()async {
                            if (_formKey.currentState!.validate()) {
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   const SnackBar(content: Text('Processing Data')),
                              // );
                              Add addUser1=Add();
                              await addUser1.addRecord(userNameController.text,emailController.text,passwordController.text,addressController.text,"worker");
                              Navigator.popAndPushNamed(context, '/login');
                            }
                          },
                          child: const Text('SignUp as Worker'),
                          
                        ),
                      ),
                    ],
                  ),
                )
              ],
          ),
    );
    // );
  }
}