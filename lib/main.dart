import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetoteste/pages/details_page.dart';
import 'package:projetoteste/pages/home_page.dart';

void main() {
  runApp(const RickAndMortyApp());
}

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const HomePage(),
            );
          case '/details':
            int characterId = settings.arguments as int;
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => DetailsPage(characterId: characterId),
            );
          default:
            return null;
        }
      },
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
