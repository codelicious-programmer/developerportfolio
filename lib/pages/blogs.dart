// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kimberlyportfolio/brand_icons_icons.dart';
import 'package:kimberlyportfolio/displayfunctions.dart';

class BlogsPage {
  static Container get blogscontainer => Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            DisplayFunctions.displayblogsbox( BrandIcons.medium, "Medium", "",
            Uri(scheme:"https", host:"www.medium.com" , path: "/@kimberlymonizofficial" )),

           /*
           DisplayFunctions.displayblogsbox( BrandIcons.instagram, "Instagram", "",
           Uri(scheme:"https", host:"www.instagram.com" , path: "/codelicious.programmer/" )
           ),

            DisplayFunctions.displayblogsbox( BrandIcons.youtube, "YouTube", "",
            Uri(scheme:"https", host:"www.youtube.com" , path: "/channel/UCJNJ_RRspyI4VE60cLPzZBg" )
            
            ),

            DisplayFunctions.displayblogsbox( Icons.book
            , "Books", "",Uri()),

           */


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