import 'package:flutter/material.dart';
import 'package:project_breathe/views/create_blog.dart';
import 'package:project_breathe/views/dep_post.dart';
import 'drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Breathe ",
              style: TextStyle(
                fontSize: 27,
              ),
            ),
            Text(
              "in",
              style: TextStyle(fontSize: 25, color: Colors.red[100]),
            )
          ],
        ),
        backgroundColor: Colors.pinkAccent,
        elevation: 0.0,
      ),
      drawer: Mydrawer(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                child: Card(
                  child: ListTile(
                    title: Text(
                      "It's never an option",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("Suicide", style: TextStyle(fontSize: 20.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DepressedPost()),
                  );
                },
                child: Container(
                  height: 100,
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "Everyone's pain isn't the same",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Depression",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100,
                child: Card(
                  child: ListTile(
                    title: Text(
                      "To Forgive and Forget",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("PTSD", style: TextStyle(fontSize: 20.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100,
                child: Card(
                  child: ListTile(
                    title: Text(
                      "Studying can be difficult, creativity can't",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("ADHD", style: TextStyle(fontSize: 20.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 100,
                child: Card(
                  child: ListTile(
                    title: Text(
                      "Break the taboo and complexity",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle:
                        Text("Schizophrenia", style: TextStyle(fontSize: 20.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Colors.pink,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateBlog()));
              },
              child: Icon(
                Icons.edit,
              ),
            )
          ],
        ),
      ),
    );
  }
}
