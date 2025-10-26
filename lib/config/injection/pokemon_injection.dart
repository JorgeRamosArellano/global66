import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_jorge_ramos_globall66_flutter/data/implementations/pokemon/pokemon_repository_impl.dart';
import 'package:test_jorge_ramos_globall66_flutter/data/services/http/pokemon/pokemon_api_service.dart';
import 'package:test_jorge_ramos_globall66_flutter/domain/usecase/pokemon_usecase.dart';

part 'pokemon_injection.g.dart';

// @Riverpod(keepAlive: true)
// PokemonUseCase pokemonServiceSupabase(Ref ref){
//   return PokemonRepositoryImpl(service: service);
// }

@Riverpod(keepAlive: true)
PokemonApiService servicePokemonAPI(Ref ref){
  return PokemonApiService();//Seleccionar Servicio/Gateway que se desea implementar
}


@Riverpod(keepAlive: true)
PokemonRepositoryImpl pokemonRepositoryImpl(Ref ref){
  final service = ref.read(servicePokemonAPIProvider);
  return PokemonRepositoryImpl(service: service);
}

@Riverpod(keepAlive: true)
PokemonUseCase pokemonUseCase(Ref ref){
  final repository = ref.read(pokemonRepositoryImplProvider);
  return PokemonUseCase(repository: repository);
}