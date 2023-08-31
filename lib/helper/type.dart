import 'package:flutter/material.dart';

final Map<String, Color> typeColors = {
  'normal': Color(0xFFBCBCAC),
  'combat': Color(0xFFBC5442),
  'vol': Color(0xFF669AFF),
  'poison': Color(0xFFAB549A),
  'sol': Color(0xFFDEBC54),
  'roche': Color(0xFFBCAC66),
  'insecte': Color(0xFFABBC1C),
  'fantome': Color(0xFF6666BC),
  'acier': Color(0xFFABACBC),
  'feu': Color(0xFFFF421C),
  'eau': Color(0xFF2F9AFF),
  'plante': Color(0xFF78CD54),
  'électrik': Color(0xFFFFCD30),
  'psy': Color(0xFFFF549A),
  'glace': Color(0xFF78DEFF),
  'dragon': Color(0xFF7866EF),
  'ténèbres': Color(0xFF785442),
  'fée': Color(0xFFFFACFF),
  'spectre': Color(0xFF0E2E4C)
};
Color getTypeColor(String type) {
  return typeColors[type.toLowerCase()] ?? Color(0xfff79496);
}
