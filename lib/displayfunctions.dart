// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:kimberlyportfolio/brand_icons_icons.dart';
import 'package:kimberlyportfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class DisplayFunctions {
  static Image udemylogo = Image.asset(
    "assets/udemylogo.png",
    height: 100.0,
    width: 150.0,
  );

  static Image udacitylogo = Image.asset(
    "assets/Udacitylogo.png",
    height: 150.0,
    width: 150.0,
  );

  static displaycertification(
      Image logo, String platform, String coursename, String period) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: KimberlyPortfolioConstants.certboxbg,
          // backgroundBlendMode: BlendMode.colorBurn,
          border: Border.all(
              color: Colors.black, width: 2.0, style: BorderStyle.solid),
        ),
        child: Row(
          children: [
            logo,
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    """$platform:$coursename 
Completed in $period""",
                    style: KimberlyPortfolioConstants.bodybuttontextstyle,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static displaycertificationwithcert(Image logo, String platform,
      String coursename, String period, Image certificate) {
    return Row(
      children: [
        logo,
        Column(
          children: [
            Text(
              platform,
              style: KimberlyPortfolioConstants.subheadingtextstyle,
            ),
            Text(
              coursename,
              style: KimberlyPortfolioConstants.subheadingtextstyle,
            ),
            Text(
              period,
              style: KimberlyPortfolioConstants.subheadingtextstyle,
            ),
          ],
        ),
        certificate,
      ],
    );
  }

  static displayachivementbox(
      String imgpath, String name, String description, Uri url) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: KimberlyPortfolioConstants.achboxsize,
            width: KimberlyPortfolioConstants.achboxsize,
            child: ElevatedButton(
              onPressed: () {
                _launchInBrowser(url);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(KimberlyPortfolioConstants.accent1),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    imgpath,
                    height: 100.0,
                    width: 100.0,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 25,
                      //color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    description,
                    style: TextStyle(fontFamily: 'Arima',
                    fontSize: 20,
                    //color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                    
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  static Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  static displayblogsbox(
      IconData icondata, String name, String description, Uri myuri) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: KimberlyPortfolioConstants.blogboxsize,
            width: KimberlyPortfolioConstants.blogboxsize,
            child: ElevatedButton(
              onPressed: () {
                Uri url = myuri;
                _launchInBrowser(url);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icondata,
                    size: KimberlyPortfolioConstants.iconsize,
                  ),
                  Text(
                    name,
                    style: KimberlyPortfolioConstants.subheadingtextstyle,
                  ),
                  Text(
                    description,
                    style: KimberlyPortfolioConstants.normaltextstyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  static mylinks() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SizedBox(
        width: 600,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /*
            IconButton(
              onPressed: () {
                Uri url = Uri(
                    scheme: "https",
                    host: "dev.to",
                    path: "/codeliciousprogrammer");
                _launchInBrowser(url);
              },
              icon: Icon(
                BrandIcons.dev,
                size: KimberlyPortfolioConstants.iconsize,
                color: Colors.deepPurple,
              ),
            ),
            */
            IconButton(
              onPressed: () {
                Uri url = Uri(
                    scheme: "https",
                    host: "www.linkedin.com",
                    path: "/in/kimberly-moniz-a51aa11aa/");
                _launchInBrowser(url);
              },
              icon: Icon(
                BrandIcons.linkedin,
                size: KimberlyPortfolioConstants.iconsize,
                color: Colors.indigo,
              ),
            ),
            IconButton(
              onPressed: () {
                Uri url = Uri(
                    scheme: "https",
                    host: "www.facebook.com",
                    path: "/profile.php",
                    queryParameters: {'id': '100083874761667'});
                _launchInBrowser(url);

                /*
                Uri url = Uri(
                    scheme: "https",
                    host: "www.facebook.com",
                    path: "/profile.php",
                    queryParameters: {'id': '100011416379928'});
                _launchInBrowser(url);
                */
              },
              icon: Icon(
                BrandIcons.facebook,
                size: KimberlyPortfolioConstants.iconsize,
                color: Colors.blue,
              ),
            ),
            IconButton(
              onPressed: () {
                Uri url = Uri(
                    scheme: "https",
                    host: "github.com",
                    path: "/codelicious-programmer");
                _launchInBrowser(url);
              },
              icon: Icon(
                BrandIcons.github,
                size: KimberlyPortfolioConstants.iconsize,
                color: Colors.green,
              ),
            ),
            /*
            IconButton(
              onPressed: () {
                Uri url = Uri(
                  scheme: "https",
                  host: "codeliciousprogrammerkimberly.stck.me",
                );
                _launchInBrowser(url);
              },
              icon: Icon(
                BrandIcons.blogger_b,
                size: KimberlyPortfolioConstants.iconsize,
                color: Colors.amber,
              ),
              
            ),
            
            IconButton(
              onPressed: () {
                Uri url = Uri(
                    scheme: "https",
                    host: "www.instagram.com",
                    path: "/codelicious.programmer/");
                _launchInBrowser(url);
              },
              icon: Icon(
                BrandIcons.instagram,
                size: KimberlyPortfolioConstants.iconsize,
                color: Colors.deepOrange,
              ),
            ),
            IconButton(
              onPressed: () {
                Uri url = Uri(
                    scheme: "https",
                    host: "www.youtube.com",
                    path: "/channel/UCJNJ_RRspyI4VE60cLPzZBg");
                _launchInBrowser(url);
              },
              icon: Icon(
                BrandIcons.youtube,
                size: KimberlyPortfolioConstants.iconsize,
                color: Colors.red,
              ),
            ),
            */
            IconButton(
              onPressed: () {
                Uri url = Uri(
                    scheme: "https",
                    host: "www.medium.com",
                    path: "/@kimberlymonizofficial");
                _launchInBrowser(url);
              },
              icon: Icon(
                BrandIcons.medium,
                size: KimberlyPortfolioConstants.iconsize,
                color: Colors.black,
              ),
            ),
            /*
            TextButton(
              onPressed: () {
                Uri url = Uri(
                    scheme: "https",
                    host: "www.piecex.com",
                    path: "/users/profile/codelici40418");
                _launchInBrowser(url);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: Image.asset(
                "assets/piecexlogo.png",
                fit: BoxFit.contain,
                height: 50,
                width: 100,
                alignment: Alignment.bottomCenter,
              ),
            ),
            */
          ],
        ),
      ),
    );
  }

  static launchURLBrowser(String site) async {
    var url = Uri.parse(site);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static openlink(String site) {
    launchURLBrowser(site);
  }
}//class 

