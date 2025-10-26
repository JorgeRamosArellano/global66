// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

/// Entidad/Modelo mapeo datos asociados al objeto pokemón
class Pokemon {
  final int id;
 final String name;
 final int height;
 final int baseExperience;
 final List<String> moves;

  Pokemon({
    required this.id,
    required this.name,
    required this.height,
    required this.baseExperience,
    required this.moves,
  });


  Pokemon copyWith({
    int? id,
    String? name,
    int? height,
    int? baseExperience,
    List<String>? moves,
  }) {
    return Pokemon(
      id: id ?? this.id,
      name: name ?? this.name,
      height: height ?? this.height,
      baseExperience: baseExperience ?? this.baseExperience,
      moves: moves ?? this.moves,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'height': height,
      'baseExperience': baseExperience,
      'moves': moves,
    };
  }

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      id: map['id'] as int,
      name: map['name'] as String,
      height: map['height'] as int,
      baseExperience: map['base_experience'] as int,
      moves: List<String>.from((map['moves'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) => Pokemon.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Pokemon(id: $id, name: $name, height: $height, baseExperience: $baseExperience, moves: $moves)';
  }

  @override
  bool operator ==(covariant Pokemon other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.height == height &&
      other.baseExperience == baseExperience &&
      listEquals(other.moves, moves);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      height.hashCode ^
      baseExperience.hashCode ^
      moves.hashCode;
  }
}
