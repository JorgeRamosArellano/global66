import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_jorge_ramos_globall66_flutter/domain/entities/pokemon/pokemon_result.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/providers/pokemon/pokemon_provider.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/ui/screens/details/pokemon_details_screen.dart';

class HomeDashboardController {

  final WidgetRef _ref;
  
  List<PokemonResult> pokemonList = [];

  HomeDashboardController(this._ref){
    setPokemonListListener();
  }


  void setPokemonListListener(){
    pokemonList = _ref.read(pokemonListProvider) ?? [];
    _ref.listenManual(
      pokemonListProvider, 
      (prev, next) {
        pokemonList = next ?? [];
      },
    );
  }

  void onTapPokemonCard(int index){
    final pokemonSelected = pokemonList[index];
    Navigator.of(_ref.context).push(
      MaterialPageRoute(
        builder: (context) => PokemonDetailsScreen(pokemonId: pokemonSelected.name),
      ),
    );
  }


}