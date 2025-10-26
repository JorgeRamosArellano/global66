import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_jorge_ramos_globall66_flutter/domain/entities/pokemon/pokemon.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/providers/pokemon/pokemon_provider.dart';

class PokemonDetailsController {

  final WidgetRef _ref;
  final String currentPokemonId;
  late final Pokemon? currentPokemon;
  late ProviderSubscription getPokemonByIdProviderSub;

  PokemonDetailsController(this._ref, {required this.currentPokemonId}){
    setPokemonByIdListener();
  }

  void setPokemonByIdListener(){
    getPokemonByIdProviderSub = _ref.listenManual<AsyncValue<Pokemon>>(
      getPokemonByIdProvider(currentPokemonId), 
      (prev, next){
        if(next.isLoading) return;
        currentPokemon = next.value;
      },
    );
  }


  void closeListeners(){
    getPokemonByIdProviderSub.close();
  }

}