import 'package:flutter/material.dart';
import 'accueil_page.dart';

void main() => runApp(CurriculumVitae());

class CurriculumVitae extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(
        // primaryColor: Colors.purple[50],
        //scaffoldBackgroundColor: Colors.purple[50],
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/fonds.jpeg'),
             fit: BoxFit.fill,
                    ),
                  ),
            child: AccueilPage(),
        ),
      ),
    );
  }
}



