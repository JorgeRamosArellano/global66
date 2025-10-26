import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/controllers/details/pokemon_details_controller.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/providers/pokemon/pokemon_provider.dart';

class PokemonDetailsScreen extends ConsumerStatefulWidget {
  final String pokemonId;
  const PokemonDetailsScreen({super.key, required this.pokemonId});

  @override
  ConsumerState<PokemonDetailsScreen> createState() => _PokemonDetailsScreenState();
}

class _PokemonDetailsScreenState extends ConsumerState<PokemonDetailsScreen> {

  late PokemonDetailsController controller;

  @override
  void initState() {
    controller = PokemonDetailsController(ref, currentPokemonId: widget.pokemonId);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final asyncValuePokemonId = ref.watch(getPokemonByIdProvider(controller.currentPokemonId));
    return Scaffold(
      body: asyncValuePokemonId.when(
        data: (data) => Center(child: Text(data.name)), 
        error: (_, __) => Text('Error'), 
        loading: () => Center(child: CircularProgressIndicator.adaptive()),
      ),
    );
  }
}