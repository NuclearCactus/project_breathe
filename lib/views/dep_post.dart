import 'package:flutter/material.dart';

class DepressedPost extends StatefulWidget {
  const DepressedPost({Key? key}) : super(key: key);

  @override
  _DepressedPostState createState() => _DepressedPostState();
}

class _DepressedPostState extends State<DepressedPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Breathe",
              style: TextStyle(
                color: Colors.red[100],
                fontSize: 27,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.pink.shade600,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              child: Column(
                children: <Widget>[
                  Card(
                    child: ListTile(
                        title: Text(
                      "Everyone's pain isn't the same",
                      style: TextStyle(fontSize: 40),
                    )),
                  ),
                  Card(
                    child: ListTile(
                        title: Text(
                      "by ApplePie",
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 15),
                    )),
                  ),
                  Card(
                    child: ListTile(
                        title: Text(
                      "Depression (major depressive disorder) is a common and serious medical illness that negatively affects how you feel, the way you think and how you act. Fortunately, it is also treatable. Depression causes feelings of sadness and/or a loss of interest in activities you once enjoyed. It can lead to a variety of emotional and physical problems and can decrease your ability to function at work and at home.\n\nSymptoms must last at least two weeks and must represent a change in your previous level of functioning for a diagnosis of depression. Also, medical conditions (e.g., thyroid problems, a brain tumor or vitamin deficiency) can mimic symptoms of depression so it is important to rule out general medical causes.\n\nDepression affects an estimated one in 15 adults (6.7%) in any given year. And one in six people (16.6%) will experience depression at some time in their life. Depression can occur at any time, but on average, first appears during the late teens to mid-20s. Women are more likely than men to experience depression. Some studies show that one-third of women will experience a major depressive episode in their lifetime. There is a high degree of heritability (approximately 40%) when first-degree relatives (parents/children/siblings) have depression.\n\nBut being sad is not the same as having depression. The grieving process is natural and unique to each individual and shares some of the same features of depression. Both grief and depression may involve intense sadness and withdrawal from usual activities.\n\nGrief and depression can co-exist For some people, the death of a loved one, losing a job or being a victim of a physical assault or a major disaster can lead to depression. When grief and depression co-occur, the grief is more severe and lasts longer than grief without depression. \n\nDepression is among the most treatable of mental disorders. Between 80% and 90% percent of people with depression eventually respond well to treatment. Almost all patients gain some relief from their symptoms.\n\nThere are a number of things people can do to help reduce the symptoms of depression. For many people, regular exercise helps create positive feeling and improves mood. Getting enough quality sleep on a regular basis, eating a healthy diet and avoiding alcohol (a depressant) can also help reduce symptoms of depression.\n\nDepression is a real illness and help is available. With proper diagnosis and treatment, the vast majority of people with depression will overcome it. If you are experiencing symptoms of depression, a first step is to see your family physician or psychiatrist. Talk about your concerns and request a thorough evaluation. This is a start to addressing your mental health needs.",
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
