import 'dart:convert';

import 'package:http/http.dart' as http;
import '../services/location.dart';

class NetworkHelper {

  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // print(jsonDecode(response.body));
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}