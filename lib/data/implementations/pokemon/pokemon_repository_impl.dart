import 'package:test_jorge_ramos_globall66_flutter/data/services/http/pokemon/pokemon_api_service.dart';
import 'package:test_jorge_ramos_globall66_flutter/domain/entities/pokemon/pokemon.dart';
import 'package:test_jorge_ramos_globall66_flutter/domain/repositories/pokemon/pokemon_repository.dart';

class PokemonRepositoryImpl extends PokemonRepository {

  final PokemonApiService service;

  PokemonRepositoryImpl({required this.service}); 

  @override
  Future<Pokemon?> getPokemonDetailById(String id) async{
    final modelsResponse = await service.getPokemonDetailById(id);
    if(modelsResponse == null) return null;
    final entity = modelsResponse.toEntity();
    return entity;
  }

  @override
  Future<List<Pokemon>> getPokemonList() {
    // TODO: implement getPokemonList
    throw UnimplementedError();
  }
}