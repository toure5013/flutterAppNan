import 'package:flutter/material.dart';
import 'package:nan_movie/Screens/ProfilePage.dart';
import 'package:nan_movie/player/chewie-full-player.dart';
import 'package:nan_movie/player/chewie-player.dart';
import 'package:nan_movie/ui/acceuil.dart';
import 'package:nan_movie/ui/login_page.dart';
import 'package:nan_movie/player/videosplayer.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Nan movie',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
   
    home:  new AcceuilPage(),

    );
  }
}
