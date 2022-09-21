// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kimberlyportfolio/brand_icons_icons.dart';
import 'package:kimberlyportfolio/constants.dart';
import 'package:kimberlyportfolio/displayfunctions.dart';
import 'package:kimberlyportfolio/pages/achivements.dart';
import 'package:kimberlyportfolio/pages/blogs.dart';
import 'package:kimberlyportfolio/pages/certificationspage.dart';
import 'package:kimberlyportfolio/pages/contact.dart';
import 'package:kimberlyportfolio/pages/education.dart';
import 'package:kimberlyportfolio/pages/skills.dart';


void main() {
  runApp(const KimberlyPortfolio());
  /*
  if (Platform.isAndroid==true) {
    runApp(const KimberlyPortfolioMobile());
  } else {
    runApp(const KimberlyPortfolio());
  }
  */
}

Container _bodycontainer = defbody();
var bodycontent = "";

class KimberlyPortfolio extends StatefulWidget {
  const KimberlyPortfolio({Key? key}) : super(key: key);

  @override
  State<KimberlyPortfolio> createState() => _KimberlyPortfolioState();
}

defbody() {
  Container pgbody = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        //width: 600,
                        child: Text(
                          "Hi ! I am Kimberly Moniz",
                          textAlign: TextAlign.left,
                          style: KimberlyPortfolioConstants.headingtextstyle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 600,
                        child: Text(
                          "I develop custom softwares in Python  and Flutter. ",
                          textAlign: TextAlign.left,
                          softWrap: true,
                          style: KimberlyPortfolioConstants.subheadingtextstyle,
                        ),
                      ),
                    ),
                    DisplayFunctions.mylinks(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        /*
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ElevatedButton(
                            onPressed: () {
                                
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    KimberlyPortfolioConstants.bodybuttoncolor)),
                            child: Text("Contact Me",
                                style:
                                    KimberlyPortfolioConstants.bodybuttontextstyle),
                          ),
                        ),
                        */
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        KimberlyPortfolioConstants
                                            .bodybuttoncolor)),
                            child: Text("See my Resume",
                                style: KimberlyPortfolioConstants
                                    .bodybuttontextstyle),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage("assets/bwnobg.png"),
                ),
              ),
            ],
          ),
        ),
      ));

  return pgbody;
}

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return DrawerController(
      alignment: DrawerAlignment.end,
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                _bodycontainer = defbody();
              });
            },
            child: Text(
              "Home",
              style: KimberlyPortfolioConstants.buttontextstyle,
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bodycontainer = SkillsPage.skillscontainer;
              });
            },
            child: Text(
              "Skills",
              style: KimberlyPortfolioConstants.buttontextstyle,
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bodycontainer = EducationPage.educationcontainer;
              });
            },
            child: Text(
              "Education",
              style: KimberlyPortfolioConstants.buttontextstyle,
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bodycontainer = CertificationPage.certificationscontainer;
              });
            },
            child: Text(
              "Certifications",
              style: KimberlyPortfolioConstants.buttontextstyle,
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bodycontainer = AchievementsPage.achievmentscontainer;
              });
            },
            child: Text(
              "Projects",
              style: KimberlyPortfolioConstants.buttontextstyle,
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bodycontainer = BlogsPage.blogscontainer;
              });
            },
            child: Text(
              "Blogs",
              style: KimberlyPortfolioConstants.buttontextstyle,
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bodycontainer = ContactPage.contactscontainer;
              });
            },
            child: Text(
              "Contact",
              style: KimberlyPortfolioConstants.buttontextstyle,
            ),
          ),
        ],
      ),
    );
  }
}

class _KimberlyPortfolioState extends State<KimberlyPortfolio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0,
          title: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/kmappbar1.png',
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
            ),
            iconSize: 300.0,
          ),
          elevation: 0.0,
          toolbarOpacity: 0.0,
          backgroundColor: Colors.white,
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  _bodycontainer = defbody();
                });
              },
              child: Text(
                "Home",
                style: KimberlyPortfolioConstants.buttontextstyle,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bodycontainer = SkillsPage.skillscontainer;
                });
              },
              child: Text(
                "Skills",
                style: KimberlyPortfolioConstants.buttontextstyle,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bodycontainer = EducationPage.educationcontainer;
                });
              },
              child: Text(
                "Education",
                style: KimberlyPortfolioConstants.buttontextstyle,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bodycontainer = CertificationPage.certificationscontainer;
                });
              },
              child: Text(
                "Certifications",
                style: KimberlyPortfolioConstants.buttontextstyle,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bodycontainer = AchievementsPage.achievmentscontainer;
                });
              },
              child: Text(
                "Projects",
                style: KimberlyPortfolioConstants.buttontextstyle,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bodycontainer = BlogsPage.blogscontainer;
                });
              },
              child: Text(
                "Blogs",
                style: KimberlyPortfolioConstants.buttontextstyle,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bodycontainer = ContactPage.contactscontainer;
                });
              },
              child: Text(
                "Contact",
                style: KimberlyPortfolioConstants.buttontextstyle,
              ),
            ),
          ],
        ),
        body: _bodycontainer,
      ),
    );
  }
}

class KimberlyPortfolioMobile extends StatefulWidget {
  const KimberlyPortfolioMobile({super.key});

  @override
  State<KimberlyPortfolioMobile> createState() =>
      _KimberlyPortfolioMobileState();
}

class _KimberlyPortfolioMobileState extends State<KimberlyPortfolioMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0,
          title: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/kmappbar1.png',
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
            ),
            iconSize: 300.0,
          ),
          elevation: 0.0,
          toolbarOpacity: 0.0,
          backgroundColor: Colors.white,

          /*
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  _bodycontainer = defbody();
                });
              },
              child: Text(
                "Home",
                style: KimberlyPortfolioConstants.buttontextstyle,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bodycontainer = SkillsPage.skillscontainer;
                });
              },
              child: Text(
                "Skills",
                style: KimberlyPortfolioConstants.buttontextstyle,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bodycontainer = EducationPage.educationcontainer;
                });
              },
              child: Text(
                "Education",
                style: KimberlyPortfolioConstants.buttontextstyle,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bodycontainer = CertificationPage.certificationscontainer;
                });
              },
              child: Text(
                "Certifications",
                style: KimberlyPortfolioConstants.buttontextstyle,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bodycontainer = AchievementsPage.achievmentscontainer;
                });
              },
              child: Text(
                "Projects",
                style: KimberlyPortfolioConstants.buttontextstyle,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bodycontainer = BlogsPage.blogscontainer;
                });
              },
              child: Text(
                "Blogs",
                style: KimberlyPortfolioConstants.buttontextstyle,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bodycontainer = ContactPage.contactscontainer;
                });
              },
              child: Text(
                "Contact",
                style: KimberlyPortfolioConstants.buttontextstyle,
              ),
            ),
          ],
          */
        ),
        drawer: MyDrawer(),
        body: _bodycontainer,
      ),
    );
  }
}
