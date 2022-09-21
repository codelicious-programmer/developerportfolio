// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kimberlyportfolio/constants.dart';
import 'package:kimberlyportfolio/displayfunctions.dart';

class ContactPage {
  static Container get contactscontainer => Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            Text("Contact Me", style: KimberlyPortfolioConstants.headingtextstyle,),

            Row(
              children: [
                Icon(Icons.contact_phone, size: KimberlyPortfolioConstants.iconsize,),
                Text("+91 9619147188", style: KimberlyPortfolioConstants.subheadingtextstyle,),
              ],
            ),
            
            Row(
              children: [
                Icon(Icons.email, size: KimberlyPortfolioConstants.iconsize,),
                Text("kimberlymonizofficial@gmail.com", style: KimberlyPortfolioConstants.subheadingtextstyle,),
              ],
            ),

            DisplayFunctions.mylinks(),

          ],
        ),
      );
}
/*
const Container skillscontainer = Container(
    child: Row(
  children: [
    Text("My skills are Python, Java, Flutter, Web development"),
    Text("Hello")
  ],
));

*/