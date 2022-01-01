import 'package:cv_alicia/page_academique.dart';
import 'package:cv_alicia/accueil_page.dart';
import 'package:flutter/material.dart';
import 'page_pro.dart';
import 'page_langues.dart';
import 'page_autres.dart';

class CorpsCV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/fonds.jpeg"),
                fit: BoxFit.fill,
              ),
            ),

        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>AccueilPage(),
                ),
              );
            },
            child: CarteReutilisable(
              couleur: Colors.lightBlue,
              cardChild:Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/alicia.jpg'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Alicia FERREIRA',
                      style: TextStyle(
                        fontFamily: 'Courgette',
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
              ),
            ),
          ),
          Text(
            'Curriculum Vitae',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Gwendolyn',
              fontSize: 50.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>PageAcademique(),
                      ),
                    );
                  },
                  child: CarteReutilisable(
                    couleur: Colors.lightBlue,
                    cardChild:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Académique',
                            style: TextStyle(
                              fontFamily: 'AlegreyaSans',
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>PagePro(),
                      ),
                    );
                  },
                  child: CarteReutilisable(
                    couleur: Colors.lightBlue,
                    cardChild:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Professionnel',
                            style: TextStyle(
                              fontFamily: 'AlegreyaSans',
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>PageLangues(),
                      ),
                    );
                  },
                  child: CarteReutilisable(
                    couleur: Colors.lightBlue,
                    cardChild:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Langues',
                            style: TextStyle(
                              fontFamily: 'AlegreyaSans',
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>PageAutres(),
                      ),
                    );
                  },
                  child: CarteReutilisable(
                    couleur: Colors.lightBlue,
                    cardChild:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Autres',
                            style: TextStyle(
                              fontFamily: 'AlegreyaSans',
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      ),
      ),
    );
  }
}

class CarteReutilisable extends StatelessWidget {
  final Color couleur;
  final Widget cardChild;
  CarteReutilisable ({required this.couleur, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      width: 180.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
