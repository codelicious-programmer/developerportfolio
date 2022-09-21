import 'package:flutter/material.dart';

class KimberlyPortfolioConstants {
  static const accent1 = Color.fromRGBO(97, 85, 166, 1.0);
  static const accent2 = Color.fromRGBO(166, 133, 226, 1.0);
  static const accent3 = Color.fromRGBO(255, 171, 225, 1.0);
  static const accent4 = Color.fromRGBO(255, 230, 230, 1.0);

  static const headingfontsize = 20.0;
  static const headingfont = "Cinzel";
  static const buttonfont = 'Cinzel';
  static const iconsize = 40.0;
  static const bodybuttoncolor = Colors.indigoAccent;
  static const imgheight = 350.0;
  static const imgwidth = 350.0;
  static const blogboxsize = 200.0;
  static const flutterimgpath =
      "data:image/png;base64,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";

  static const pythonlogo =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/2048px-Python-logo-notext.svg.png";

  static const simplydologo = "assets/Simply_Do.png";

  static const devfoliologo = "assets/devfoliologo.png";
  static const eduimgsize = 200.0;
  static const TextStyle buttontextstyle = TextStyle(
    fontFamily: buttonfont,
    fontSize: 20,
    color: Colors.indigo,
  );

  static const TextStyle bodybuttontextstyle = TextStyle(
    fontFamily: 'Lemon',
    fontSize: 25,
    color: Colors.black,
  );

  static const headingtextstyle = TextStyle(
    fontFamily: 'Charm',
    fontSize: 50,
    color: Colors.indigo,
  );

  static const subheadingtextstyle = TextStyle(
    fontSize: 30,
    fontFamily: 'Arima',
  );

  static const normaltextstyle = TextStyle(fontSize: 20, fontFamily: 'Niconne');

  //achivement pg

  // ignore: constant_identifier_names
  static const Color achbuttonboxcolor = Colors.indigo;
  static const achboxsize = 350.0;

  static const eduheadingtextstyle = TextStyle(
    fontFamily: 'Charm',
    fontSize: 50,
    color: Colors.indigo,
  );

  static const edusubheadingtextstyle = TextStyle(
    fontSize: 30,
    fontFamily: 'Sriracha',
  );

  static const edunormaltextstyle =
      TextStyle(fontSize: 20, fontFamily: 'Arima');

  static const eduboxbg = Color.fromRGBO(255, 230, 230, 1.0);

  static const certboxbg = eduboxbg;
}
