import 'package:flutter/material.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/ui/layouts/dashboard_layout.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/ui/screens/onboarding/onboarding_screen.dart';

//Enrutamineto sencillo para aplicación sencilla
final  Map<String, Widget Function(BuildContext)> appRoutes = {
  OnBoardingScreen.route : (context) => OnBoardingScreen(),
  DashboardLayout.route : (context) => DashboardLayout(),
};