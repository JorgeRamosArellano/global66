import 'package:test_jorge_ramos_globall66_flutter/data/services/http/pokemon/pokemon_api_service.dart';
import 'package:test_jorge_ramos_globall66_flutter/domain/entities/pokemon/pokemon.dart';
import 'package:test_jorge_ramos_globall66_flutter/domain/repositories/pokemon/pokemon_repository.dart';

class PokemonRepositoryImpl extends PokemonRepository {

  final PokemonApiService service;

  PokemonRepositoryImpl({required this.service}); 

  @override
  Future<List<Pokemon>?> getPokemonList() async {
    final responseModels = await service.getPokemonList();
    if(responseModels == null) return null;
    final List<Pokemon> list = []; 
  
    for (final (index, model) in responseModels.results.indexed) {
      final entity = model.toEntity();
      entity.index = index;
      list.add(entity);
    }
    
    return list;
  }

  
  @override
  Future<Pokemon?> getPokemonDetailById(String id) async{
    final modelsResponse = await service.getPokemonDetailById(id);
    if(modelsResponse == null) return null;
    final entity = modelsResponse.toEntity();
    return entity;
  }

}