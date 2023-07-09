import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> myList=[1,1.2,"",true,null];

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "data:image/jpeg;base64,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"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            //I.Q: diff between S.between/ S.around/ Space evently
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,

            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.27,
              ),

              Image.asset(
                "images/1.png",
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.height * 0.2,
              ),
              // Image.network(
              //     "https://www.shutterstock.com/image-vector/quiz-check-speech-bubble-sign-260nw-281084969.jpg")
              Text("Ali Quiz App",
                  style: GoogleFonts.aBeeZee(
                    color: Color.fromARGB(255, 165, 177, 207),
                    fontSize: 30,
                  )

                  // TextStyle(
                  //     color: Colors.yellow,
                  //     fontSize: 25,
                  //     fontWeight: FontWeight.bold),
                  ),
              const SizedBox(
                height: 12,
              ),
              Text("We Are Creative, enjoy our App",
                  style: GoogleFonts.dancingScript(
                    color: Color.fromARGB(196, 250, 249, 249),
                    fontSize: 26,
                  )

                  //  TextStyle(
                  //   color: Color.fromARGB(255, 255, 255, 255),
                  //   fontSize: 20,
                  // ),
                  ),

              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.3,
              // ),

              Spacer(),

              //I.Q
              //diff between margin and padding:
              //1- margin: space between item and surrounddings
              //2- padding: space between itme and his child

              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 28, horizontal: 26),
                // padding: EdgeInsets.all(20),

                child: ElevatedButton(
                    // style: ButtonStyle(
                    //   backgroundColor: MaterialStateProperty.all(Colors.green),
                    // ),
                    onPressed: () {
                      // print("hello iam omar")

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );

                      // Navigator.pushAndRemoveUntil(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => LoginScreen()),
                      //   (route) => false,
                      // );
                    },
                    child: const Text(
                      "Start",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
              ),

              // Checkbox(
              //   value: true,
              //   onChanged: (value) {},
              // ),
              // Radio(
              //   value: "groupValue",
              //   groupValue: "groupValue",
              //   onChanged: (value) {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
