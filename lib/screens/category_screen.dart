import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:iti_quez/screens/question_screen.dart';

class Categoryscreen extends StatelessWidget {
  const Categoryscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Qestionscreen()),
                );
              },
              child: Container(
                color: Colors.red,
                child: const Center(
                  child: Text("Math test",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Qestionscreen()),
                );
              },
              child: Container(
                color: Colors.white,
                child: const Center(
                    child: Text("Sport test",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold))),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Qestionscreen()),
                );
              },
              child: Container(
                color: Colors.green,
                child: const Center(
                    child: Text("History test",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
