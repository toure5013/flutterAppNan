import 'package:video_player/video_player.dart';
import 'package:http/http.dart' as http;
// import 'package:dio/dio.dart';
import 'dart:convert' as convert;

class Myfunctions {


  getMovies(searchText) async {
    var movies;

    try {
      http: //www.omdbapi.com/?apikey=13ba2d6f&s=home
      var url = "http://www.omdbapi.com/?apikey=13ba2d6f&s='${searchText}'";

      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        // print("Number of element about http: $itemCount.");
        movies = jsonResponse["Search"];
        movies = convert.jsonEncode(movies);
        // print(movies);
        return movies;
      } else {
        print("Request failed with status: ${response.statusCode}.");
      }
    } catch (e) {
      var error = {'status': 404, 'message ': "ERROR $e"};
    }
  }



}
