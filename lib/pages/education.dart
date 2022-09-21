// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kimberlyportfolio/constants.dart';

class EducationPage {
  static Container get educationcontainer => Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
         scrollDirection: Axis.vertical,
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
          
            Text("Education",
            style: KimberlyPortfolioConstants.eduheadingtextstyle,
           
            ),
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: KimberlyPortfolioConstants.eduboxbg ,
                  //backgroundBlendMode: BlendMode.colorBurn,
                  
                  border: Border.all(color: Colors.black, width: 2.0, style: BorderStyle.solid),
                ),
                child: Row(
                  //masters
                  children: [
                    Image.asset("assets/kclogo.png",
                    height: KimberlyPortfolioConstants.eduimgsize,
                    width: KimberlyPortfolioConstants.eduimgsize,
                    ),
          
                     Column(
                      children: [
                        Text(
          '''Kishinchand Chellaram College,
          Masters Degree in Science ( Information Technology)
          with specialization in Artificial Intelligence.''',
                        style: KimberlyPortfolioConstants.edusubheadingtextstyle,
                        ),
                        Text("2019-2021", style: KimberlyPortfolioConstants.edunormaltextstyle,),
                        Text("Student Representative in the Adhoc Board of Studies for M.Sc.IT of HSNC university.",
                        style: KimberlyPortfolioConstants.edunormaltextstyle,
                        
                        ),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
          
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: KimberlyPortfolioConstants.eduboxbg ,
                    //backgroundBlendMode: BlendMode.colorBurn ,
                    border: Border.all(color: Colors.black, width: 2.0, style: BorderStyle.solid),
                  ),
                child: Row(
                  //bachelors
                  children: [
                    Image.asset("assets/kclogo.png",
                    height: KimberlyPortfolioConstants.eduimgsize,
                    width: KimberlyPortfolioConstants.eduimgsize,
                    ),
                     Column(
                      children: [
                        Text(
          """Kishinchand Chellaram College, 
          Bachelor's Degree in Science (Information Technology)""",
                        style: KimberlyPortfolioConstants.edusubheadingtextstyle,
                        ),
          
                        Text("2016-2019",style: KimberlyPortfolioConstants.edunormaltextstyle,),
                        Text("Participated in the organization of events.",style: KimberlyPortfolioConstants.edunormaltextstyle,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                      color: KimberlyPortfolioConstants.eduboxbg ,
                      //backgroundBlendMode: BlendMode.colorBurn,
                      border: Border.all(color: Colors.black, width: 2.0, style: BorderStyle.solid),
                    ),
                child: Row(
                  //junior college
                
                  children: [
                   Image.asset("assets/kclogo.png",
                   height: KimberlyPortfolioConstants.eduimgsize,
                    width: KimberlyPortfolioConstants.eduimgsize,
                   ),
                    Column(
                      children: [
                        Text(
          """Kishinchand Chellaram College, 
          Higher Secondary Certificate in Commerce""",
                        style: KimberlyPortfolioConstants.edusubheadingtextstyle,
                        ),
                        Text("2014-2016",style: KimberlyPortfolioConstants.edunormaltextstyle,),
                        Text("Participated in the organization of various events",style: KimberlyPortfolioConstants.edunormaltextstyle,),
                        Text("Completed a course in Cyber Security essentials",style: KimberlyPortfolioConstants.edunormaltextstyle,),
                      ],
                    ),
          
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                      color: KimberlyPortfolioConstants.eduboxbg ,
                      //backgroundBlendMode: BlendMode.colorBurn,
                      border: Border.all(color: Colors.black, width: 2.0, style: BorderStyle.solid),
                    ),
                child: Row(
                  //school
                
                  children: [
                    Image.asset("assets/cjmlogo.png",
                    height: KimberlyPortfolioConstants.eduimgsize,
                    width: KimberlyPortfolioConstants.eduimgsize,
                    ),
          
                    Column(
                      children: [
                        Text("Convent of Jesus and Mary High School",
                        style: KimberlyPortfolioConstants.edusubheadingtextstyle,
                        ),
                        Text("2002-2014",style: KimberlyPortfolioConstants.edunormaltextstyle,),
                       // Text("Elected as Head of Student Council for two consecutive years.",style: KimberlyPortfolioConstants.edunormaltextstyle,)
                        
                      ],
                    )
          
                  ],
                ),
              ),
            ),
          ]),
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