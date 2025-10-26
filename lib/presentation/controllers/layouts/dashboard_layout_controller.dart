import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/providers/layouts/dashboard_layout_provider.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/ui/screens/dashboard/favorite_dashboard_screen.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/ui/screens/dashboard/home_dashboard_screen.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/ui/screens/dashboard/profile_dashboard_screen.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/ui/screens/dashboard/regions_dashboard_screen.dart';
import 'package:test_jorge_ramos_globall66_flutter/shared/enums/dashboard_section.dart';

class DashboardLayoutController {

  final WidgetRef _ref;
  DashboardSection currentSection = DashboardSection.home;

  DashboardLayoutController(this._ref){
    currentSection = _ref.read(dashboardLayoutProvider);
  }

  Widget buildSection(){
    switch (currentSection) {
      case DashboardSection.home:
        return HomeDashboardScreen();
      case DashboardSection.regions:
        return RegionsDashboardScreen();
      case DashboardSection.favorites:
        return FavoriteDashboardScreen();
      case DashboardSection.profile:
        return ProfileDashboardScreen();
    }
  }

  void onSectionSelected(int index){
    currentSection = DashboardSection.values[index];
    _ref.read(dashboardLayoutProvider.notifier).update = currentSection;
  }
}