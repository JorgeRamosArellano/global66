import 'package:test_jorge_ramos_globall66_flutter/data/models/pokemon/pokemon_model.dart';

/// Clase con servicios HTTP que conecta y trae datos externos
class PokemonApiService {

  /// Trae la lista de los pokemons
  Future<List<PokemonModel>?> getPokemonList() async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      return [];
    } catch (e) {
      return null;
    }
  }

  /// Trae un pokemon con sus detalles
  Future<PokemonModel?> getPokemonDetailById(String id) async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      return PokemonModel(name: '');
    } catch (e) {
      return null;
    }
  }

}