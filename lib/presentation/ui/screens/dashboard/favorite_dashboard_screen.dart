import 'package:flutter/material.dart';
import 'package:test_jorge_ramos_globall66_flutter/shared/helpers/image_paths.dart';

class FavoriteDashboardScreen extends StatefulWidget {
  const FavoriteDashboardScreen({super.key});

  @override
  State<FavoriteDashboardScreen> createState() => _FavoriteDashboardScreenState();
}

class _FavoriteDashboardScreenState extends State<FavoriteDashboardScreen> {
  @override
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            mainAxisSize: MainAxisSize.min,
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.matrix(<double>[ 
                  0.2126,0.7152,0.0722,0,0, 
                  0.2126,0.7152,0.0722,0,0, 
                  0.2126,0.7152,0.0722,0,0, 
                  0,0,0,1,0, 
                ]),
                child: Image.asset(ImagePaths.errorFish),
              ),
              Text('No has marcado ningún\nPokémon como favorito', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              Text('Haz clic en el ícono de corazón de tus\nPokémon favoritos y aparecerán aquí.'),
            ],
          ),
        ),
      ),
    );
  }
}