import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'Myroutes.dart';

class MedPage extends StatefulWidget {
  const MedPage({Key? key, value}) : super(key: key);

  @override
  State<MedPage> createState() => _MedPageState();
}

class _MedPageState extends State<MedPage> {
  final lic = TextEditingController();
  final pass = TextEditingController();

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
      await Navigator.pushNamed(context, Myroutes.homeroute);

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
        backgroundColor: Colors.pinkAccent,
        title: Text(
          "Breathe",
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
              Image.asset("images/doctor.png", fit: BoxFit.scaleDown),
              SizedBox(
                height: 30,
              ),
              Text(
                "Are you a certified Doctor?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(children: [
                  TextFormField(
                    controller: lic,
                    decoration: InputDecoration(
                      hintText: "if not applicable skip",
                      labelText: "license number",
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        k = -1;
                      } else if (value.length != 5) {
                        return "invalid license number";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink.shade500,
                    ),
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
