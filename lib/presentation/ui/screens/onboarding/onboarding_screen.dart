import 'package:flutter/material.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/ui/widgets/shared/custom_buttom.dart';
import 'package:test_jorge_ramos_globall66_flutter/shared/helpers/image_paths.dart';
import 'package:test_jorge_ramos_globall66_flutter/presentation/ui/layouts/dashboard_layout.dart';


class OnBoardingScreen extends StatelessWidget {
  static final route = '/';
  OnBoardingScreen({super.key});

  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          OnBoardingLayout(
            image: ImagePaths.pokeball, title: ' \n ', description: ' \n ', labelBtn: '¡PokeBall!',
            onPressed: () => controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.linear),
          ),
          OnBoardingLayout(
            image: ImagePaths.mens, title: 'Todos los Pokémon en\nun solo lugar', description: 'Accede a una amplia lista de Pokémon de\ntodas las generaciones creadas por Nintendo',
            labelBtn: 'Continuar',
            onPressed: () => controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.linear),
          ),
          OnBoardingLayout(
            image: ImagePaths.hilda, title: 'Mantén tu Pokédex\nactualizada', description: 'Regístrate y guarda tu perfil, Pokémon\nfavoritos, configuraciones y mucho más en la aplicación',
            labelBtn: 'Empecemos',
            onPressed: () => Navigator.pushReplacementNamed(context, DashboardLayout.route),
          ),
        ],

      ),
    );
  }
}



class OnBoardingLayout extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String labelBtn;
  final void Function() onPressed;
  const OnBoardingLayout({super.key, required this.image, required this.title, required this.description, required this.labelBtn, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 4),
            Image.asset(image, width: size.width * 0.5),
            Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.07), textAlign: TextAlign.center,),
            Text(description, textAlign: TextAlign.center),
            Spacer(flex: 2),
            CustomButtom(
              label: labelBtn,
              onPressed: onPressed,
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}