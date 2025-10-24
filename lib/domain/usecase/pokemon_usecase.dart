import 'package:test_jorge_ramos_globall66_flutter/domain/entities/pokemon/pokemon.dart';
import 'package:test_jorge_ramos_globall66_flutter/domain/repositories/pokemon/pokemon_repository.dart';

/// Caso de uso para pokemones. Se le inyecta un repositorio que debe extender de PokemonRepository
class PokemonUseCase {

  final PokemonRepository repository;

  PokemonUseCase({required this.repository});

  Future<List<Pokemon>?> getPokemonList() async {
    return await repository.getPokemonList();
  }

  Future<Pokemon?> getPokemonDetailById(String id) async {
    return await repository.getPokemonDetailById(id);
  }
  

}