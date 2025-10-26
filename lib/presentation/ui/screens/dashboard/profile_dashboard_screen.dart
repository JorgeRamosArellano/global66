
import 'package:flutter/material.dart';
import 'package:test_jorge_ramos_globall66_flutter/shared/helpers/image_paths.dart';

class ProfileDashboardScreen extends StatefulWidget {
  const ProfileDashboardScreen({super.key});

  @override
  State<ProfileDashboardScreen> createState() => _ProfileDashboardScreenState();
}

class _ProfileDashboardScreenState extends State<ProfileDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(ImagePaths.pokemon()),
            Text(':D'),
          ],
        ),
      ),
    );
  }
}