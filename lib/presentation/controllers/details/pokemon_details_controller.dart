import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/providers/pokemon/pokemon_provider.dart';

class PokemonDetailsController {

  final WidgetRef _ref;
  final String currentPokemonId;

  PokemonDetailsController(this._ref, {required this.currentPokemonId}){
    setPokemonByIdListener();
  }

  void setPokemonByIdListener(){
    _ref.listenManual(
      getPokemonByIdProvider(currentPokemonId), 
      (prev, next){
        print(next);
      },
    );
  }

}