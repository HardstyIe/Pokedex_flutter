// Votre fichier de widget
import 'package:flutter/material.dart';
import 'package:pokedex_flutter/helper/type.dart';

class PokemonTypeColors extends StatelessWidget {
  bool isVertical = true;
  final List<dynamic> types;
  // Changez 'dynamic' en fonction de votre modèle de données
  PokemonTypeColors({required this.types, required this.isVertical});

  @override
  Widget build(BuildContext context) {
    if (isVertical == true) {
      return Column(
        children: types.map((e) {
          return Container(
            decoration: BoxDecoration(
              color: getTypeColor(e.name),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: Text(
                e.name,
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }).toList(),
      );
    } else {
      return Row(
        children: types.map((e) {
          return Container(
            decoration: BoxDecoration(
              color: getTypeColor(e.name),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: Text(
                e.name,
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }).toList(),
      );
    }
  }
}
