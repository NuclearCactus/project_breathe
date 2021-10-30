import 'package:flutter/material.dart';
import 'package:project_breathe/views/create_blog.dart';



class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text(
            "Flutter",
             style: TextStyle(
            fontSize: 27,
            

          ),
          ),

          Text("Blog", style: TextStyle(
            fontSize: 27,
            color: Colors.amber
          ),

          )

        ],
        ),
        backgroundColor: Colors.teal,
        elevation: 0.0,
        ),
      
      body: Container(),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
    
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        FloatingActionButton(
          onPressed:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CreateBlog() ));
            
          },
          child: Icon(Icons.add),
          )
      ],
      ),
      ),


    );
  }
}