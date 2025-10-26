import 'package:flutter/material.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/ui/layouts/dashboard_layout.dart';

//Enrutamineto sencillo para aplicación sencilla
final  Map<String, Widget Function(BuildContext)> appRoutes = {
  DashboardLayout.route : (context) => DashboardLayout(),
};