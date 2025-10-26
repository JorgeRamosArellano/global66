// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_injection.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(servicePokemonAPI)
const servicePokemonAPIProvider = ServicePokemonAPIProvider._();

final class ServicePokemonAPIProvider
    extends
        $FunctionalProvider<
          PokemonApiService,
          PokemonApiService,
          PokemonApiService
        >
    with $Provider<PokemonApiService> {
  const ServicePokemonAPIProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'servicePokemonAPIProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$servicePokemonAPIHash();

  @$internal
  @override
  $ProviderElement<PokemonApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PokemonApiService create(Ref ref) {
    return servicePokemonAPI(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokemonApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokemonApiService>(value),
    );
  }
}

String _$servicePokemonAPIHash() => r'9ba701943c10befd093c005185e26aca3e1ba608';

@ProviderFor(pokemonRepositoryImpl)
const pokemonRepositoryImplProvider = PokemonRepositoryImplProvider._();

final class PokemonRepositoryImplProvider
    extends
        $FunctionalProvider<
          PokemonRepositoryImpl,
          PokemonRepositoryImpl,
          PokemonRepositoryImpl
        >
    with $Provider<PokemonRepositoryImpl> {
  const PokemonRepositoryImplProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonRepositoryImplProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonRepositoryImplHash();

  @$internal
  @override
  $ProviderElement<PokemonRepositoryImpl> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PokemonRepositoryImpl create(Ref ref) {
    return pokemonRepositoryImpl(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokemonRepositoryImpl value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokemonRepositoryImpl>(value),
    );
  }
}

String _$pokemonRepositoryImplHash() =>
    r'6bfc5b72419befc5bf09bf7e115e8ac2f6b253b9';

@ProviderFor(pokemonUseCase)
const pokemonUseCaseProvider = PokemonUseCaseProvider._();

final class PokemonUseCaseProvider
    extends $FunctionalProvider<PokemonUseCase, PokemonUseCase, PokemonUseCase>
    with $Provider<PokemonUseCase> {
  const PokemonUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonUseCaseHash();

  @$internal
  @override
  $ProviderElement<PokemonUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PokemonUseCase create(Ref ref) {
    return pokemonUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokemonUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokemonUseCase>(value),
    );
  }
}

String _$pokemonUseCaseHash() => r'67b62d1fb96f4f1922ed5241e0afb3a2d69407fa';
