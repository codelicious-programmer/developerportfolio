// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kimberlyportfolio/constants.dart';
import 'package:kimberlyportfolio/data.dart';

class SkillsPage {
  static Container get skillscontainer => Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              DisplayData.skillspagetitle,
              style: KimberlyPortfolioConstants.headingtextstyle,
            ),
            Text(
              DisplayData.skillsdef,
              style: KimberlyPortfolioConstants.subheadingtextstyle,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/dev.png",
                    height: KimberlyPortfolioConstants.imgheight,
                    width: KimberlyPortfolioConstants.imgwidth,
                  ),
                  Image.asset(
                    "assets/think.png",
                    height: KimberlyPortfolioConstants.imgheight,
                    width: KimberlyPortfolioConstants.imgwidth,
                  ),
                  Image.asset(
                    "assets/solve.png",
                    height: KimberlyPortfolioConstants.imgheight,
                    width: KimberlyPortfolioConstants.imgwidth,
                  ),
                ],
              ),
            ),
            Text(
              "What do I develop ?",
              style: KimberlyPortfolioConstants.headingtextstyle,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                     
                      Column(
                        children: [
                          Text(
            """Websites & 
            Web Applications""",
                            style: KimberlyPortfolioConstants.subheadingtextstyle,
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            children: [
                              Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Google_Sites_2020_Logo.svg/1200px-Google_Sites_2020_Logo.svg.png",
                                height: KimberlyPortfolioConstants.iconsize,
                                width: KimberlyPortfolioConstants.iconsize,
                              ),
                              Image.network( KimberlyPortfolioConstants.flutterimgpath,
                                height: KimberlyPortfolioConstants.iconsize,
                                width: KimberlyPortfolioConstants.iconsize,
                              ),
                            ],
                          ),
                          Image.asset(
                            "assets/webapp.png",
                            height: KimberlyPortfolioConstants.imgheight,
                            width: KimberlyPortfolioConstants.imgwidth,
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text("Desktop Applications",
                      style: KimberlyPortfolioConstants.subheadingtextstyle,
                      softWrap: true,
                      ),
                       Row(
                         children: [
                           Image.network( KimberlyPortfolioConstants.flutterimgpath,
                                    height: KimberlyPortfolioConstants.iconsize,
                                    width: KimberlyPortfolioConstants.iconsize,
                                  ),
                           
                           Image.network( KimberlyPortfolioConstants.pythonlogo,
                                    height: KimberlyPortfolioConstants.iconsize,
                                    width: KimberlyPortfolioConstants.iconsize,
                                  ),
                         ],
                       ),
                       
                       Image.asset(
                            "assets/desktopapp.png",
                            height: KimberlyPortfolioConstants.imgheight,
                            width: KimberlyPortfolioConstants.imgwidth,
                          ),
            
                    ],
                  ),
                  Column(
                    children: [
                      Text("Mobile Applications",
                      style: KimberlyPortfolioConstants.subheadingtextstyle,
                      softWrap: true,
                      ),
                      Image.network( KimberlyPortfolioConstants.flutterimgpath,
                                height: KimberlyPortfolioConstants.iconsize,
                                width: KimberlyPortfolioConstants.iconsize,
                              ),
                      
                      Image.asset(
                            "assets/mobile.png",
                            height: KimberlyPortfolioConstants.imgheight,
                            width: KimberlyPortfolioConstants.imgwidth,
                          ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ));
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