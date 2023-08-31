import 'package:flutter/material.dart';
import 'package:pokedex_flutter/helper/api_services.dart';
import 'package:pokedex_flutter/models/pokemon.dart';
import 'package:pokedex_flutter/screens/details/pokemon_details.dart';
import 'package:pokedex_flutter/widget/image_pokemon_widget.dart';
import 'package:pokedex_flutter/widget/types_color_colum_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<UserModel>? _userModel = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future<List<UserModel>> _getData() async {
    _userModel = await ApiService().getUsers();
    return _userModel!;
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
                icon: const Icon(Icons.menu, color: Colors.black, size: 30.0),
                onPressed: () {},
              ),
            ),
          ],
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back, color: Colors.black, size: 30.0)),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Pokedex',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            FutureBuilder<List<UserModel>>(
                future: _getData(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<UserModel>> snapshot) {
                  if (snapshot.hasData) {
                    return Expanded(
                        flex: 1,
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1,
                            ),
                            itemCount: _userModel!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PokemonDetail(
                                              userModel:
                                                  (_userModel![index]))));
                                },
                                child: Card(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("${_userModel![index].name?.fr}"),
                                      Row(
                                        children: [
                                          PokemonTypeColors(
                                              isVertical: true,
                                              types: _userModel![index].types),
                                          ImagesPokemon(
                                              id: _userModel![index].pokedexId,
                                              height: 50,
                                              width: 50,
                                              imagesHeight: 50,
                                              imageWidth: 50)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }));
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })
          ]),
        ));
  }
}
