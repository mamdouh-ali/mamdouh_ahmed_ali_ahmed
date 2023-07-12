import 'package:flutter/material.dart';
import 'package:iti_quez/Screens/Opening_screen.dart';

class Scorescreen extends StatelessWidget {
  const Scorescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          RichText(
              text: TextSpan(
            text: 'Hello',
            style: TextStyle(fontSize: 20, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: ' Mamdouh Ali',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextSpan(text: ' your score is '),
              TextSpan(
                text: '15/20',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              )
            ],
          )),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OpeningScreen()),
                );
              },
              child: Text("Play Again")),
        ]),
      ),
    );
  }
}
