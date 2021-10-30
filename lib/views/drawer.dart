import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'create_blog.dart';
import 'Myroutes.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    final url =
        "https://th.bing.com/th/id/OIP.cg8EoJiWTTJvYXpJ5B651AHaHa?pid=ImgDet&rs=1";
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
                  "James Milner",
                  textScaleFactor: 1.2,
                ),
                accountEmail: Text(
                  "Jamesmilner7@gmail.com",
                  textScaleFactor: 1.2,
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(url),
                ),
              ),
            ),
            SizedBox(
              height: 15,
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
            SizedBox(
              height: 15,
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
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.text_badge_star,
                color: Colors.white,
              ),
              onTap: () async {
                await Future.delayed(Duration(seconds: 1));
                await Navigator.pushNamed(context, Myroutes.blogroute);
              },
              title: Text(
                "FAQ",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 230,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.check_mark_circled_solid,
                color: Colors.greenAccent.shade400,
              ),
              title: Text(
                "Verified",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
