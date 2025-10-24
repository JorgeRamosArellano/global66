import 'package:test_jorge_ramos_globall66_flutter/domain/entities/pokemon/pokemon.dart';

/// objeto con los datos retornados por el servicio de pokemon
class PokemonModel {

  final String name;
  PokemonModel({required this.name});


  Pokemon toEntity(){
    return Pokemon();
  }



}