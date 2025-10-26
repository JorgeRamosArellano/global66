import 'package:test_jorge_ramos_globall66_flutter/domain/entities/pokemon/pokemon.dart';
import 'package:test_jorge_ramos_globall66_flutter/domain/entities/pokemon/pokemon_result.dart';
///Contrato que define las operaciones que puede realizar con las entidades. En este caso, para Pokemon Entity
abstract class PokemonRepository {
  ///Trae todos los pokemones [Page: 1]
  Future<List<PokemonResult>?> getPokemonList();

  ///Trae los detalles de un pokemon
  Future<Pokemon?> getPokemonDetailById(String id);

}