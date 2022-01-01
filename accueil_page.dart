import 'package:cv_alicia/main.dart';
import 'package:flutter/material.dart';
import 'corps_cv.dart';
class AccueilPage extends StatefulWidget {
  @override
  _AccueilPageState createState() => _AccueilPageState();
}

class _AccueilPageState extends State <AccueilPage> {

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          GestureDetector(
            onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(
                 builder: (context) => CorpsCV(),
                ),
              );
            },
            child: CircleAvatar(
              radius: 150.0,
              backgroundImage: AssetImage('images/alicia.jpg'),
            ),
          ),
          SizedBox(
          height: 15.0,
          ),
          Center(
            child: Text(
              'Alicia FERREIRA',
              style: TextStyle(
                fontFamily: 'Courgette',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
           Text(
            'Ingénieure',
            style: TextStyle(
              fontFamily: 'AlegreyaSans',
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
        ),
          SizedBox(
            height:20.0,
            width:150.0,
            child:Divider(
              color:Colors.black,
          ),
        ),
          Card(
            color:Colors.blue,
            margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
            child:ListTile(
              leading: Icon(
                Icons.email,
                size:40.0,
                color:Colors.white,
                ),
              title: Text(
                "aliciaferreira@outlook.fr",
                style:TextStyle(
                  color: Colors.white,
                  fontSize:30.0,
                  fontFamily: 'Cookie',
            ),
        ),
      ),
    ),
          Card(
            color:Colors.blue,
            margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
            child:ListTile(
              leading: Icon(
                Icons.call,
                size:40.0,
                color:Colors.white,
                  ),
              title: Text(
              "+33 (0) 6 56 87 98 12",
              style:TextStyle(
                color: Colors.white,
                fontSize:30.0,
                fontFamily: 'Cookie',
                ),
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