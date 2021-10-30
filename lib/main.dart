import 'package:flutter/material.dart';
import 'package:project_breathe/views/Myroutes.dart';
import 'package:project_breathe/views/authentication.dart';
import 'package:project_breathe/views/create_blog.dart';
import 'package:project_breathe/views/home.dart';
import 'package:project_breathe/views/Medical.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_breathe/views/start_buffer.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => startpage(),
        Myroutes.homeroute: (context) => HomePage(),
        Myroutes.loginroute: (context) => LoginPage(),
        Myroutes.medicalroute: (context) => MedPage(),
        Myroutes.startroute: (context) => startpage(),
        Myroutes.blogroute: (context) => CreateBlog(),
      },
    );
  }
}
