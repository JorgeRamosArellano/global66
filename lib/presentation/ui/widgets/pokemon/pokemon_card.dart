import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_jorge_ramos_globall66_flutter/domain/entities/pokemon/pokemon.dart';

class PokemonCard extends StatefulWidget {
  final Pokemon pokemon;
  final void Function() onTap;
  const PokemonCard({super.key, required this.pokemon, required this.onTap});

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {

  Color getRandomColor(int index) {
  final random = Random(index); // usa el index como semilla
  return Color.fromARGB(
    255,
    random.nextInt(56) + 200,
    random.nextInt(56) + 200,
    random.nextInt(56) + 200,
  );
}


  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: widget.onTap,
      child: Card(
        elevation: 3,
        child: Container(
          height: size.height * 0.1,
          decoration: BoxDecoration(
            color: getRandomColor(widget.pokemon.index ?? 0),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('N° ${widget.pokemon.index}'),
                  Icon(Icons.arrow_forward_ios_rounded),
                ],
              ),
              Text(
                widget.pokemon.name.toUpperCase(), 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.04,
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}