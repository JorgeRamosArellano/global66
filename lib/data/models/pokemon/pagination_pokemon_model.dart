import 'package:test_jorge_ramos_globall66_flutter/domain/entities/pokemon/pokemon.dart';

class PaginationPokemonModel {
  final int count;
  final String? next;
  final String? previous;
  final List<PokemonResultModel> results;

  PaginationPokemonModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory PaginationPokemonModel.fromJson(Map<String, dynamic> json) {
    return PaginationPokemonModel(
      count: json['count'] ?? 0,
      next: json['next'],
      previous: json['previous'],
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonResultModel.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results.map((e) => e.toJson()).toList(),
    };
  }
}

class PokemonResultModel {
  final String name;
  final String url;

  PokemonResultModel({
    required this.name,
    required this.url,
  });

  factory PokemonResultModel.fromJson(Map<String, dynamic> json) {
    return PokemonResultModel(
      name: json['name'] ?? '',
      url: json['url'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }

  Pokemon toEntity(){ 
    return Pokemon(
      name: name,
      url: url,
    );
  }
}
