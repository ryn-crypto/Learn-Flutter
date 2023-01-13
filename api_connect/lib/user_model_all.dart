import 'dart:convert';
import 'package:http/http.dart' as http;

class UserAll {
  String id;
  String name;

  UserAll({this.id, this.name});

  factory UserAll.CreateUser(Map<String, dynamic> object) {
    return UserAll(
        id: object['id'].toString(),
        name: object['first_name'] + " " + object['last_name']);
  }

  static Future<List<UserAll>> getUser(String page) async {
    String apiUrl = 'https://reqres.in/api/users?page=$page';
    var apiResult = await http.get(apiUrl);
    var jsonObject = jsonDecode(apiResult.body);

    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];
    List<UserAll> user = [];

    for (var i = 0; i < listUser.length; i++) {
      user.add(UserAll.CreateUser(listUser[i]));
    }

    return user;
  }
}
