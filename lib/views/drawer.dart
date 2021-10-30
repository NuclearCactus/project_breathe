import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Myroutes.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.pink.shade300,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.pink.shade500),
                  margin: EdgeInsets.zero,
                  accountName: Text(
                    "Username ",
                    textScaleFactor: 1.2,
                  ),
                  accountEmail: Text(
                    "accountEmail",
                    textScaleFactor: 1.2,
                  )),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              onTap: () async {
                await Future.delayed(Duration(seconds: 1));
                await Navigator.pushNamed(context, Myroutes.homeroute);
              },
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              onTap: () async {
                await Future.delayed(Duration(seconds: 1));
                await Navigator.pushNamed(context, Myroutes.loginroute);
              },
              title: Text(
                "Login",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
