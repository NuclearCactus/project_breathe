import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:project_breathe/views/Medical.dart';
import 'Myroutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _email = new TextEditingController();
  var _pass = new TextEditingController();
  var _user = new TextEditingController();

  int k = 0;
  String txt = "";
  bool tap = false;
  bool tap1 = true;
  final _formkey = GlobalKey<FormState>();
  gotohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        tap = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Myroutes.medicalroute);

      setState(() {
        tap = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade600,
        title: Text(
          "Login",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset("images/login.png", fit: BoxFit.scaleDown),
              SizedBox(
                height: 30,
              ),
              Text(
                "Welcome $txt",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(children: [
                  TextFormField(
                      controller: _user,
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        txt = value;
                        setState(() {});
                      }),
                  TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
                      hintText: "Enter E-Mail id",
                      labelText: "Email",
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "E-Mail cannot be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _pass,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "password cannot be empty";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.pink.shade500),
                    onPressed: () => gotohome(context),
                    child: tap ? Icon(Icons.done) : Text("Login"),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
