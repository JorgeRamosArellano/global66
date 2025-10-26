import 'package:test_jorge_ramos_globall66_flutter/domain/entities/pokemon/pokemon.dart';

class PokemonModel {
  final int id;
  final String name;
  final int height;
  final int baseExperience;
  final bool isDefault;
  final String cryUrl;
  final String encountersUrl;
  final List<String> abilities;
  final List<String> moves;
  final List<String> forms;

  PokemonModel({
    required this.id,
    required this.name,
    required this.height,
    required this.baseExperience,
    required this.isDefault,
    required this.cryUrl,
    required this.encountersUrl,
    required this.abilities,
    required this.moves,
    required this.forms,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      height: json['height'] ?? 0,
      baseExperience: json['base_experience'] ?? 0,
      isDefault: json['is_default'] ?? true,
      cryUrl: json['cries']?['latest'] ?? '',
      encountersUrl: json['location_area_encounters'] ?? '',
      abilities: (json['abilities'] as List<dynamic>?)
              ?.map((a) => a['ability']['name'] as String)
              .toList() ??
          [],
      moves: (json['moves'] as List<dynamic>?)
              ?.map((m) => m['move']['name'] as String)
              .take(10)
              .toList() ??
          [],
      forms: (json['forms'] as List<dynamic>?)
              ?.map((f) => f['name'] as String)
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'height': height,
        'base_experience': baseExperience,
        'is_default': isDefault,
        'cry_url': cryUrl,
        'encounters_url': encountersUrl,
        'abilities': abilities,
        'moves': moves,
        'forms': forms,
      };
      
  Pokemon toEntity(){
    return Pokemon(name: name, url: encountersUrl);
  }
}


  
