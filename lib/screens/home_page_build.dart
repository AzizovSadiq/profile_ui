import 'package:flutter/material.dart';
import 'package:ui_profil/screens/card_screen.dart';
import 'package:ui_profil/screens/home_page.dart';
import 'package:ui_profil/screens/profil_screen.dart';

class HomePageBuilder extends StatelessWidget {
  const HomePageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        HomePage(),
        ProfilScreen(),
        CardScreen(),
      ],
    );
  }
}
