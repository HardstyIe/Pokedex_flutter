import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import './constants.dart';
import '../models/pokemon.dart';

class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);

        // Supprimer le premier élément si la liste n'est pas vide
        if (_model.isNotEmpty) {
          _model.removeAt(0);
        }

        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }

  List<UserModel> userModelFromJson(String str) =>
      List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));
}
