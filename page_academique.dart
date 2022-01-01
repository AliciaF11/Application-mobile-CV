import 'package:cv_alicia/accueil_page.dart';
import 'package:cv_alicia/corps_cv.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class PageAcademique extends StatelessWidget {

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
            'Formation Académique',
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
                          Center(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: ' Depuis 2020 : ITS - EPISEN',
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Cookie',
                                      fontSize: 30.0,
                                      color: Colors.white,
                                    ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch('https://episen.u-pec.fr/formations/technologies-pour-la-sante-its');
                            },
                           ),
                          ],
                          ),
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
                          Center(
                            child: RichText(
                                text: TextSpan(
                                  children: [
                                      TextSpan(
                                      text: '  2020 : Licence Biologie-Santé '
                                          '\n                   UPEC',
                                       //textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Cookie',
                                          fontSize: 30.0,
                                          color: Colors.white,
                                        ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          launch('https://www.u-pec.fr/fr/formation/niveau-l/licence-sciences-de-la-vie-et-de-la-terre-parcours-biologie-sante');
                                        },
                                      ),
                                    ],
                                   ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                         ),
                        ],
                          //onPressed: () => _launchUrl('https://www.u-pec.fr/fr/formation/niveau-l/licence-sciences-de-la-vie-et-de-la-terre-parcours-biologie-sante'),
                     ),
                  ),
                Container(
                  child: CarteReutilisable(
                    couleur: Colors.lightBlue,
                    cardChild:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                           child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '   2017: Baccalauréat Scientifique'
                                  '\n                Louise Michel',
                            //textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Cookie',
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                           launch('http://louisemichelchampigny.ac-creteil.fr/');
                                },
                              ),
                            ],
                          ),
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
      margin: EdgeInsets.all(20.0),
      width: 400.0,
      height: 80.0,
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

/*void _launchUrl(String url) async {
  if (await canLaunch(url))
  {await launch(url);}
  else { throw 'Erreur de lien';}
}
 */
