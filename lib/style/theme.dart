import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Colors {

  const Colors();

  static const Color loginGradientStart = const Color(0xFFfbab66);
  static const Color loginGradientEnd = const Color(0xFFf7418c);

  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );



    //Receullier les infos de l'utilisateur
                              // dynamic userInfo = await http.get(
                              // "http://10.0.2.2:4000/api/user/${phone}"
                              // );

                              // var name = userInfo.name;


     //Redirection vers la page profil
                              // if(loggedIn == true) {
                              //    await Navigator.push(
                              //     context, new MaterialPageRoute(
                              //       builder: (context) => ProfilePageDesign()
                              //   ));
                              // }
}