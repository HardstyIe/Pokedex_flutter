import 'package:flutter/material.dart';
import 'package:pokedex_flutter/models/pokemon.dart';
import 'package:pokedex_flutter/widget/image_pokemon_widget.dart';
import 'package:pokedex_flutter/widget/types_color_colum_widget.dart';

class PokemonDetail extends StatefulWidget {
  const PokemonDetail({super.key, required this.userModel});
  final UserModel userModel;
  @override
  State<PokemonDetail> createState() => _PokemonDetailState();
}

class _PokemonDetailState extends State<PokemonDetail> {
  List<String> _menu = ["About", "Stats", "Evolution", "Talents"];
  int _currentIndex = 0;
  bool isLoved = false;
  @override
  void changeCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace:
            Container(decoration: BoxDecoration(color: Colors.white)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: Icon(
                isLoved ? Icons.favorite : Icons.favorite_border_outlined,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: () {
                setState(() {
                  isLoved = !isLoved;
                });
              },
            ),
          ),
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.black, size: 30.0)),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  widget.userModel.name!.fr,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "#${widget.userModel.pokedexId}",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: PokemonTypeColors(
                    isVertical: false, types: widget.userModel.types),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  widget.userModel.category,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              )
            ],
          ),
          ImagesPokemon(
              id: widget.userModel.pokedexId,
              height: 200,
              width: MediaQuery.of(context).size.width,
              imagesHeight: 200,
              imageWidth: 200),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: ListView.builder(
                    itemCount: _menu.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: (index == 0)
                            ? const EdgeInsets.only(right: 16)
                            : const EdgeInsets.symmetric(horizontal: 16),
                        child: GestureDetector(
                          onTap: () => changeCurrentIndex(index),
                          child: Text(
                            _menu[index],
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: (_currentIndex == index)
                                    ? Colors.black
                                    : Colors.grey),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
