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
    extends $NotifierProvider<PokemonList, List<PokemonResult>?> {
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
  Override overrideWithValue(List<PokemonResult>? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<PokemonResult>?>(value),
    );
  }
}

String _$pokemonListHash() => r'fbf95da463bcc5c8662011fa071829987313e579';

abstract class _$PokemonList extends $Notifier<List<PokemonResult>?> {
  List<PokemonResult>? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<PokemonResult>?, List<PokemonResult>?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<PokemonResult>?, List<PokemonResult>?>,
              List<PokemonResult>?,
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
          AsyncValue<List<PokemonResult>?>,
          List<PokemonResult>?,
          FutureOr<List<PokemonResult>?>
        >
    with
        $FutureModifier<List<PokemonResult>?>,
        $FutureProvider<List<PokemonResult>?> {
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
  $FutureProviderElement<List<PokemonResult>?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<PokemonResult>?> create(Ref ref) {
    return getPokemonList(ref);
  }
}

String _$getPokemonListHash() => r'47546bf722c715b9984f672c7dcb0e4d298fb5d4';

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
