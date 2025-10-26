import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_jorge_ramos_globall66_flutter/config/injection/pokemon_injection.dart';
import 'package:test_jorge_ramos_globall66_flutter/domain/entities/pokemon/pokemon.dart';
import 'package:test_jorge_ramos_globall66_flutter/domain/entities/pokemon/pokemon_result.dart';

part 'pokemon_provider.g.dart';

@Riverpod(keepAlive: true)
class PokemonList extends _$PokemonList {

  @override
  List<PokemonResult>? build() => null;

  set update(List<PokemonResult>? list) => state = list;


}



@Riverpod(keepAlive: true)
Future<List<PokemonResult>?> getPokemonList(Ref ref) async{
  final useCase = ref.read(pokemonUseCaseProvider);
  final response = await useCase.getPokemonList();
  ref.read(pokemonListProvider.notifier).update = response;
  if(response == null) throw Error();
  return response;
}


@Riverpod(keepAlive: true)
Future<Pokemon> getPokemonById(Ref ref, String id) async{
  final useCase = ref.read(pokemonUseCaseProvider);
  final response = await useCase.getPokemonDetailById(id);
  if(response == null) throw Error();
  return response;
}