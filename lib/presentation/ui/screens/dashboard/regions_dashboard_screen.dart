import 'package:flutter/material.dart';
import 'package:test_jorge_ramos_globall66_flutter/shared/helpers/image_paths.dart';

class RegionsDashboardScreen extends StatefulWidget {
  const RegionsDashboardScreen({super.key});

  @override
  State<RegionsDashboardScreen> createState() => _RegionsDashboardScreenState();
}

class _RegionsDashboardScreenState extends State<RegionsDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            spacing: 10,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(ImagePaths.soonCat),
              Text('¡Muy pronto disponible!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              Text('Estamos trabajando para traerte esta sección. Vuelve más adelante para descubrir todas las novedades.'),
            ],
          ),
        ),
      ),
    );
  }
}