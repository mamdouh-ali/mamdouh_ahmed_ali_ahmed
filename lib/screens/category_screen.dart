import 'package:flutter/material.dart';
import 'package:iti_quez/screens/question_screen.dart';

import '../Global/global_data.dart';

import '../Shared/category_contained.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        CategoryContainer(
          testname: "Sport test",
          containerColor: Colors.blue,
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuestionsScreen(
                        testName: "Sport test",
                        themeColor: Colors.blue,
                        questionsList: sporttest,
                      )),
            );
          },
        ),
        CategoryContainer(
          testname: "History Test",
          containerColor: Colors.purple,
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuestionsScreen(
                        testName: "History Test",
                        themeColor: Colors.purple,
                        questionsList: historytest,
                      )),
            );
          },
        ),
        CategoryContainer(
          testname: "General test",
          containerColor: Color.fromARGB(255, 13, 149, 97),
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuestionsScreen(
                        testName: "General test",
                        themeColor: Color.fromARGB(255, 13, 149, 97),
                        questionsList: generaltest,
                      )),
            );
          },
        ),
      ]),
    );
  }
}
