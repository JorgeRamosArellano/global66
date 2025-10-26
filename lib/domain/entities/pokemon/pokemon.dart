// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/// Entidad/Modelo mapeo datos asociados al objeto pokemón
class Pokemon {
 final String name;
 final String url;
 final int height;
 int? index;

  Pokemon({
    required this.name,
    required this.url,
    required this.height,
    this.index,
  });


  Pokemon copyWith({
    String? name,
    String? url,
    int? height,
    int? index,
  }) {
    return Pokemon(
      name: name ?? this.name,
      url: url ?? this.url,
      height: height ?? this.height,
      index: index ?? this.index,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
      'height': height,
      'index': index,
    };
  }

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      name: map['name'] as String,
      url: map['url'] as String,
      height: map['height'] as int,
      index: int.tryParse(map['index']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) => Pokemon.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Pokemon(name: $name, url: $url, height: $height, index: $index)';
  }

  @override
  bool operator ==(covariant Pokemon other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.url == url &&
      other.height == height &&
      other.index == index;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      url.hashCode ^
      height.hashCode ^
      index.hashCode;
  }
}
