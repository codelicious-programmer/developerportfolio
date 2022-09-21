// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kimberlyportfolio/constants.dart';
import 'package:kimberlyportfolio/displayfunctions.dart';

class AchievementsPage {
  static Container get achievmentscontainer => Container(
        height: double.infinity,
        width: double.infinity,
        child: SizedBox(
          width: double.infinity,
          //height: double.infinity,
          child: SingleChildScrollView(
            child: Row(
             // textDirection: TextDirection.ltr,
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 DisplayFunctions.displayachivementbox(
                    KimberlyPortfolioConstants.simplydologo,
                    "Simply Do",
          '''
          Get stuff done with Simply Do
          Do more. Achieve more. 
          We know how hard it is to keep track of all your to-do lists. 
          Simply Do is here to help.
          ''',
                    Uri(
                      scheme: "https",
                      host: "kimberlymediatechconsultancy.github.io",
                      path: "/simplydo/"
                      ),
                      
                      ),
          
                      DisplayFunctions.displayachivementbox(
                    KimberlyPortfolioConstants.devfoliologo,
                    "Developer Portfolio",
          '''
          
          ''',
                    Uri(
                      scheme: "https",
                      host: "kimberlymoniz.github.io",
                      path: "/kimberlydeveloperfolio/"
                      ),
                     
                      ),
          
          
          
          
                /* 
                DisplayFunctions.displayachivementbox(
                    KimberlyPortfolioConstants.flutterimgpath,
                    "Rosary Companion",
                    "A flutter application that works as a virtual roasry.",
                    "rosarycompnaiongithub"),
                DisplayFunctions.displayachivementbox(
                    KimberlyPortfolioConstants.flutterimgpath,
                    "Electricity Bill Calculator",
                    "Smart Electricity Bill Calculator and Forecaster",
                    "smartelectricitygithub"),
          
                     
                      DisplayFunctions.displayachivementbox(
                        KimberlyPortfolioConstants.flutterimgpath, "Sudoku App", "Flutter App for Sudoku game", "githubsudoku"),
          
                          
                      DisplayFunctions.displayachivementbox(
                        KimberlyPortfolioConstants.flutterimgpath, "To Do List", "Flutter App for fast to do list", "gittodolist"),
                           
                      DisplayFunctions.displayachivementbox(
                        KimberlyPortfolioConstants.flutterimgpath, "E-commerce App", "Flutter App for selling printables", "gitecommerce"),
                           
                      DisplayFunctions.displayachivementbox(
                        KimberlyPortfolioConstants.flutterimgpath, "Recipe Divider", "Flutter App for calculating recipe proportions", "gitrecipes"), 
                        
                      DisplayFunctions.displayachivementbox(
                        KimberlyPortfolioConstants.flutterimgpath, "Family Expense Tracker", "Flutter App for tracking family expenses", "gitfamilyexpensetracker"),
                           
                      DisplayFunctions.displayachivementbox(
                        KimberlyPortfolioConstants.flutterimgpath, "Portfolio Tracker", "Flutter App for managing stock portfolio", "gitportfolitracker"),  
                      
                      */
              ],
            ),
          ),
        ),
      );
}
