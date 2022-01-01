import 'package:cv_alicia/accueil_page.dart';
import 'package:flutter/material.dart';
import 'package:cv_alicia/corps_cv.dart';

class PageLangues extends StatelessWidget {
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
                      radius: 40.0,
                      backgroundImage: AssetImage('images/alicia.jpg'),
                    ),
                    SizedBox(
                      width: 20.0,
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
            'Langues',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Gwendolyn',
              fontSize: 50.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: CarteReutilisable(
                    couleur: Colors.lightBlue,
                    cardChild:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage('images/drapeau_france.png'),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Français',
                            style: TextStyle(
                              fontFamily: 'Cookie',
                              fontSize: 30.0,
                              letterSpacing: 2,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                    ),
                  ),
                ),
                Container(
                  child: CarteReutilisable(
                    couleur: Colors.lightBlue,
                    cardChild:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage('images/drapeau_anglais.png'),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Anglais',
                          style: TextStyle(
                            fontFamily: 'Cookie',
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: CarteReutilisable(
                    couleur: Colors.lightBlue,
                    cardChild:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage('images/drapeau_espagnol.png'),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Espagnol',
                            style: TextStyle(
                              fontFamily: 'Cookie',
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                    ),
                  ),
                ),
            Container(
              margin:EdgeInsets.fromLTRB(0.0, 10.0, 200.0, 10.0),
              child: Theme(
                data: ThemeData(accentColor:Colors.blue),
                child: FloatingActionButton(
                child:Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return CorpsCV();
                        },
                      ),
                    );
                  },
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
  CarteReutilisable({required this.couleur, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      width: 250.0,
      height: 85.0,
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
