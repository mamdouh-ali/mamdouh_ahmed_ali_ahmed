import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryContainer extends StatelessWidget {
  final String? testname;
  final Color? containerColor;
  final Function()? onTabFunction;

  const CategoryContainer(
      {super.key, this.testname, this.containerColor, this.onTabFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTabFunction,
        child: Container(
          color: containerColor,
          child: Center(
              child: Text(
            testname!,
            style: GoogleFonts.pacifico(fontSize: 34, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
