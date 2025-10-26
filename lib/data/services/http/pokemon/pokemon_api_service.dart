
import 'package:flutter/foundation.dart';
import 'package:test_jorge_ramos_globall66_flutter/data/models/pokemon/pagination_pokemon_model.dart';
import 'package:dio/dio.dart';
import 'package:test_jorge_ramos_globall66_flutter/data/models/pokemon/pokemon_model.dart';
/// Clase con servicios HTTP que conecta y trae datos externos
class PokemonApiService {

  final _httpClient = Dio(
    BaseOptions(baseUrl: 'https://pokeapi.co/api/v2/pokemon')
  );

  /// Trae la lista de los pokemons
  Future<PaginationPokemonModel?> getPokemonList() async {
    try {
      final response = await _httpClient.get('');
      if(response.statusCode != 200) throw Error();
      if (kDebugMode) print(response.data);
      final model = PaginationPokemonModel.fromJson(response.data);
      return model;
    } catch (e) {
      return null;
    }
  }

  /// Trae un pokemon con sus detalles
  Future<PokemonModel?> getPokemonDetailById(String id) async {
    try {
      final response = await _httpClient.get('/$id');
      if(response.statusCode != 200) throw Error();
      if (kDebugMode) print(response.data);
      final model = PokemonModel.fromJson(response.data);
      return model;
    } catch (e) {
      return null;
    }
  }

}