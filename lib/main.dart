import 'package:flutter/material.dart';
import 'package:ui_profil/screens/home_page.dart';
import 'package:ui_profil/screens/home_page_build.dart';
import 'package:ui_profil/screens/profil_screen.dart';

import 'screens/card_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomePageBuilder());
  }
}
