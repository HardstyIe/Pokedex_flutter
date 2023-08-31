import 'package:flutter/material.dart';

class FavorisModel extends ChangeNotifier {
  final Set<String> favoris = {};

  void toggleFavori(num id) {
    String idString = id.toString();
    if (favoris.contains(idString)) {
      favoris.remove(idString);
    } else {
      favoris.add(idString);
    }
    notifyListeners();
  }

  bool estFavori(num id) => favoris.contains(id.toString());
}
