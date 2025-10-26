import 'dart:math';

class ImagePaths {

  ImagePaths._();

  static final String errorFish = 'assets/images/error_fish.png';
  static final String soonCat = 'assets/images/soon_cat.png';
  static final String hilda = 'assets/images/hilda.png';
  static final String pokeball = 'assets/images/pokeball.png';
  static final String mens = 'assets/images/mens.png';
  static final String _pokemon = 'assets/images/pokemon_';

  static String pokemon(){
    final id = Random().nextInt(3) + 1;
    return '$_pokemon$id.png';
  }
}