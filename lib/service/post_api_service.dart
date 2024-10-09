import 'dart:convert';

import 'package:http/http.dart' as http;

class PostApi {
  final String url = "https://jsonplaceholder.typicode.com/posts";

  Future<List<dynamic>> postApi() async {
    try {
      // send the get request
      var response = await http.get(Uri.parse(url));
      //check if the request is successful
      if (response.statusCode == 200) {
        // decode the json response into the list of posts
        List<dynamic> posts = jsonDecode(response.body);
        return posts;
        // handle the fetch data
      } else {
        return [];
      }
    } catch (e) {
      print("bad request:$e");
      return [];
    }
  }
}
