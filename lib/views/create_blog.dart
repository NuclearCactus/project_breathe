import 'package:flutter/material.dart';

class CreateBlog extends StatefulWidget {
  const CreateBlog({ Key? key }) : super(key: key);

  @override
  _CreateBlogState createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
late String authorName, title, desc;
  
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


        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),

         child: Icon(Icons.file_upload)
          )
        ],
        ),
      
      body: Container(child: Column(children: <Widget>[
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          height: 150,
          decoration: BoxDecoration(color: Colors.cyan,
          borderRadius: BorderRadius.circular(6)
          ),
           width: MediaQuery.of(context).size.width,
        child: Icon(Icons.add_a_photo),
        
         ),

         SizedBox(height: 8,),
         Container(
           margin: EdgeInsets.symmetric(horizontal: 16),
           child: Column(children: <Widget>[
           TextField(
           decoration: InputDecoration(hintText: "Author Name"),
           onChanged: (val){
             authorName = val;

           },
         ),
         TextField(
           decoration: InputDecoration(hintText: "Title"),
           onChanged: (val){
             title = val;

           },
         ),
         TextField(
           decoration: InputDecoration(hintText: "Description"),
           onChanged: (val){
             desc = val;

           },
         )

         ],
         ),
         )

      ],

        ),
        ),

      

    );
  }
}