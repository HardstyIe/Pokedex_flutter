import 'package:flutter/material.dart';

class ImagesPokemon extends StatelessWidget {
  final num id;
  final double height;
  final double width;
  final double imagesHeight;
  final double imageWidth;

  const ImagesPokemon(
      {super.key,
      required this.id,
      required this.height,
      required this.width,
      required this.imagesHeight,
      required this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: Image.network(
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${id}.png",
            height: imagesHeight,
            width: imageWidth));
  }
}
