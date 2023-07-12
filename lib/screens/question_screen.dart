import 'package:flutter/material.dart';

import 'score_screen.dart';

class Qestionscreen extends StatelessWidget {
  const Qestionscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 100,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: const Center(child: Text("The Test")),
        title: Column(children: [Text("Question No:"), Text("15/20")]),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.local_hotel_outlined,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Questions:",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text("كل كام عام يقام كاس العالم"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 16,
            ),
            Text("Answers:",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Scorescreen()),
                        );
                      },
                      child: Text("2")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Scorescreen()),
                        );
                      },
                      child: Text("3")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Scorescreen()),
                        );
                      },
                      child: Text("4")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Scorescreen()),
                        );
                      },
                      child: Text("5")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
