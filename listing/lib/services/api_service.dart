import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:listing/model/user_model.dart';

class ApiService {
  List<UserModel> data = [];
  fetchApi(url) async {
    var responce = await http.get(Uri.parse(url));

    if (responce.statusCode == 200) {
      var jsonData = json.decode(responce.body);
      for (int i = 0; i < jsonData.length; i++) {
        data.add(UserModel(
            albumId: jsonData[i]["albumId"],
            id: jsonData[i]["id"],
            title: jsonData[i]["title"],
            url: jsonData[i]["url"],
            thumbnailUrl: jsonData[i]["thumbnailUrl"]));
      }
      print(data);
      return data;
    }
  }
}
