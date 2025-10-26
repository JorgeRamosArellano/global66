// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_jorge_ramos_globall66_flutter/domain/entities/pokemon/pokemon.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/controllers/details/pokemon_details_controller.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/providers/pokemon/pokemon_provider.dart';
import 'package:test_jorge_ramos_globall66_flutter/shared/helpers/image_paths.dart';

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
  void dispose() {
    controller.closeListeners();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final asyncValuePokemonId = ref.watch(getPokemonByIdProvider(controller.currentPokemonId));
    return Scaffold(
      appBar: AppBar(),
      body: asyncValuePokemonId.when(
        data: (data) => PokemonDetails(pokemon: data), 
        error: (_, __) => Center(child: Text('Error')), 
        loading: () => Center(child: CircularProgressIndicator.adaptive()),
      ),
    );
  }
}

class PokemonDetails extends StatelessWidget {
  final Pokemon pokemon; 
  const PokemonDetails({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        spacing: 30,
        children: [
          Row(
            children: [
              Text(
                pokemon.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.1),
              ),
              Image.asset(ImagePaths.pokemon())
            ],
          ),
      
          Text(
            'Movimientos',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.1),
          ),
      
          for(String move in pokemon.moves)
          Text(move)
        ],
      ),
    );
  }
}