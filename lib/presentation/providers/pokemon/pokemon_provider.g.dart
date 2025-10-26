// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PokemonList)
const pokemonListProvider = PokemonListProvider._();

final class PokemonListProvider
    extends $NotifierProvider<PokemonList, List<Pokemon>?> {
  const PokemonListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonListProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonListHash();

  @$internal
  @override
  PokemonList create() => PokemonList();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Pokemon>? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Pokemon>?>(value),
    );
  }
}

String _$pokemonListHash() => r'ab701366c357d52987a33bd9980873462dbc8b1d';

abstract class _$PokemonList extends $Notifier<List<Pokemon>?> {
  List<Pokemon>? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Pokemon>?, List<Pokemon>?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Pokemon>?, List<Pokemon>?>,
              List<Pokemon>?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(getPokemonList)
const getPokemonListProvider = GetPokemonListProvider._();

final class GetPokemonListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Pokemon>?>,
          List<Pokemon>?,
          FutureOr<List<Pokemon>?>
        >
    with $FutureModifier<List<Pokemon>?>, $FutureProvider<List<Pokemon>?> {
  const GetPokemonListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPokemonListProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPokemonListHash();

  @$internal
  @override
  $FutureProviderElement<List<Pokemon>?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Pokemon>?> create(Ref ref) {
    return getPokemonList(ref);
  }
}

String _$getPokemonListHash() => r'0c8c4b686db52c7c3e8886ed7a1911320dd864bb';

@ProviderFor(getPokemonById)
const getPokemonByIdProvider = GetPokemonByIdFamily._();

final class GetPokemonByIdProvider
    extends $FunctionalProvider<AsyncValue<Pokemon>, Pokemon, FutureOr<Pokemon>>
    with $FutureModifier<Pokemon>, $FutureProvider<Pokemon> {
  const GetPokemonByIdProvider._({
    required GetPokemonByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getPokemonByIdProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getPokemonByIdHash();

  @override
  String toString() {
    return r'getPokemonByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Pokemon> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Pokemon> create(Ref ref) {
    final argument = this.argument as String;
    return getPokemonById(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPokemonByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getPokemonByIdHash() => r'0f03355dd0654057a93d841a4934258f1e5f3b16';

final class GetPokemonByIdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Pokemon>, String> {
  const GetPokemonByIdFamily._()
    : super(
        retry: null,
        name: r'getPokemonByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  GetPokemonByIdProvider call(String id) =>
      GetPokemonByIdProvider._(argument: id, from: this);

  @override
  String toString() => r'getPokemonByIdProvider';
}
