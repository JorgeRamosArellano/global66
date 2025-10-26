import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/controllers/dashboard/home_dashboard_controller.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/providers/pokemon/pokemon_provider.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/ui/widgets/pokemon/pokemon_card.dart';

class HomeDashboardScreen extends ConsumerStatefulWidget {
  const HomeDashboardScreen({super.key});

  @override
  ConsumerState<HomeDashboardScreen> createState() => _HomeDashboardScreenState();
}

class _HomeDashboardScreenState extends ConsumerState<HomeDashboardScreen> {

  late HomeDashboardController controller;

  @override
  void initState() {
    controller = HomeDashboardController(ref);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pokemonListAsyncValue = ref.watch(getPokemonListProvider);
    return Scaffold(
      body: pokemonListAsyncValue.when(
        data: (data) => _HomeDashboardData(controller: controller), 
        error: (_, __) => _HomeDashboardError(), 
        loading: () => Center(child: CircularProgressIndicator.adaptive()),
      ),
    );
  }
}


class _HomeDashboardData extends StatelessWidget {
  final HomeDashboardController controller;
  const _HomeDashboardData({required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.pokemonList.length,
      itemBuilder: (context, index) {
        return PokemonCard(
          pokemonResult: controller.pokemonList[index],
          onTap: () => controller.onTapPokemonCard(index),
        );
      },
    );
  }
}

class _HomeDashboardError extends StatefulWidget {
  const _HomeDashboardError();

  @override
  State<_HomeDashboardError> createState() => _HomeDashboardErrorState();
}

class _HomeDashboardErrorState extends State<_HomeDashboardError> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.error),
          Text('Algo salió mal'),
        ],
      ),
    );
  }
}