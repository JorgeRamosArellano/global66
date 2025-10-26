// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PokemonResult {
  final String name;
  final String url;
  int? index;

  PokemonResult({required this.name, required this.url, required this.index});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
      'index': index,
    };
  }

  factory PokemonResult.fromMap(Map<String, dynamic> map) {
    return PokemonResult(
      name: map['name'] as String,
      url: map['url'] as String,
      index: map['index'] != null ? map['index'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonResult.fromJson(String source) => PokemonResult.fromMap(json.decode(source) as Map<String, dynamic>);
}
