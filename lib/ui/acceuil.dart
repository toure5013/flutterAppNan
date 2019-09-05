import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter/services.dart';
import 'package:nan_movie/Screens/ProfilePage.dart';
import 'package:nan_movie/style/theme.dart' as Theme;
import 'package:nan_movie/ui/login_page.dart';
import 'package:nan_movie/utils/function.dart' as myFunction;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;

class AcceuilPage extends StatefulWidget {
  AcceuilPage({Key key}) : super(key: key);

  _AcceuilPageState createState() => _AcceuilPageState();``
}

class _AcceuilPageState extends State<AcceuilPage> {
  var movies;
  var searchText;
  SharedPreferences prefs;
  
  void initState() {
    // TODO: implement initState
    super.initState();
    //Make get request for getting all movies
    // var getMoviesIntance = new Myfunctions();
    //TODO : créer une zone de texte qui va permettre à l'utilisateur de faire des recheerche de type de video
    searchText = "home";
    movies = myFunction.Myfunctions.getMovies();
    // movies = convert.jsonEncode(movies);
    print(movies);
  }

  @override
  Widget build(BuildContext context) {
    final FocusNode searchFocusNode = FocusNode();
    TextEditingController searchController = new TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: prefix0.Colors.orange,
          title: new TextField(
              controller: searchController,
              keyboardType: TextInputType.text,
              style: TextStyle(
                  fontFamily: "WorkSansSemiBold",
                  fontSize: 16.0,
                  color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 22.0,
                ),
              )),
        ),
        floatingActionButton: FloatingActionButton.extended(
          elevation: 4.0,
          icon: const Icon(Icons.widgets),
          label: const Text('Chercher la vidéo'),
          backgroundColor: prefix0.Colors.orange,
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.assignment),
                color: Colors.orange,
                onPressed: () {
                  // try{ 
                  //     prefs =_incrementCounter();
                  //    if (prefs.getString("phone") == null ||
                  //     prefs.getString("phone") == '') {
                  //       print("Vous n'êtes pas connecter");
                  //       Navigator.push(
                  //       context,
                  //       new MaterialPageRoute(
                  //           builder: (context) => LoginPage()));
                  // } else {
                  //   print("Bienvenu");
                  //   Navigator.push(
                  //       context,
                  //       new MaterialPageRoute(
                  //           builder: (context) => ProfilApp()));
                  // }
                  // }catch(e){
                  //     print("Vous n'êtes pas connecter");
                  //       Navigator.push(
                  //       context,
                  //       new MaterialPageRoute(
                  //           builder: (context) => ProfilApp()));
                  // }
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => ProfilePage()));
                 
                },
              )
            ],
          ),
        ),

        ///BODY IS HERE
        body: ListView.builder(
            itemCount: movies == null ? 0 : 10,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Image.network(
                        'https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg'),
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text("--"),
                      subtitle:
                          Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                    ),
                    ButtonTheme.bar(
                      // make buttons use the appropriate styles for cards
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Info film'),
                            onPressed: () {/* ... */},
                          ),
                          FlatButton(
                            child: const Text('Reserver un ticket'),
                            onPressed: () {/* ... */},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }));
  }

_incrementCounter() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs;
}

}
