import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/controllers/layouts/dashboard_layout_controller.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/providers/layouts/dashboard_layout_provider.dart';

class DashboardLayout extends ConsumerStatefulWidget {
  static final route = '/dashboard';
  const DashboardLayout({super.key});

  @override
  ConsumerState<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends ConsumerState<DashboardLayout> {

  late DashboardLayoutController controller;

  @override
  void initState() {
    controller = DashboardLayoutController(ref);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(dashboardLayoutProvider);
    return Scaffold(
      body: controller.buildSection(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.currentSection.index,
        onTap: controller.onSectionSelected,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Pokedex'),
          BottomNavigationBarItem(icon: Icon(Icons.public), label: 'Regiones'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}