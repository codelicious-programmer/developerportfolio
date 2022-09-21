// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kimberlyportfolio/constants.dart';
import 'package:kimberlyportfolio/displayfunctions.dart';

class CertificationPage {
  static Container get certificationscontainer => Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Courses and Certifications",
                style: KimberlyPortfolioConstants.headingtextstyle,
              ),
              DisplayFunctions.displaycertification(
                  DisplayFunctions.udemylogo,
                  "Udemy",
                  "Flutter and Dart for Beginners - Complete Course",
                  "2022"),
              DisplayFunctions.displaycertification(DisplayFunctions.udemylogo,
                  "Udemy", "Flutter and Dart Bootcamp", "2022"),
              DisplayFunctions.displaycertification(DisplayFunctions.udemylogo,
                  "Udemy", "Learn Flutter - Beginners Course", "2022"),
              DisplayFunctions.displaycertification(
                  DisplayFunctions.udemylogo, "Udemy", "Flutter 101", "2022"),
              DisplayFunctions.displaycertification(
                  DisplayFunctions.udacitylogo,
                  "Udacity",
                  "Build Native Apps with Flutter",
                  "2022"),
            ],
          ),
        ),
      );
}
