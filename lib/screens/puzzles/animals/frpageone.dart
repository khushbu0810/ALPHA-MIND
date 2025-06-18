import 'package:flutter/material.dart';
import 'details_animals/lion.dart';
import 'details_animals/toucan.dart';
import 'details_animals/armadillo.dart';

class FronePage extends StatefulWidget {
  @override
  _FronePageState createState() => _FronePageState();
}

class _FronePageState extends State<FronePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fr1.jpg'), fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 70,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: Text(
                  'Tap the animals to know more.',
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                    color: Colors.black87,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ToucanPage()));
                },
                child: Container(
                  child: Image(
                      image: AssetImage('assets/toucan.png'), height: 140),
                ),
              ),
              Text(
                'Toucan',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 74,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LionPage()));
                },
                child: Container(
                  child: Image(
                    image: AssetImage('assets/lion.png'),
                    height: 250,
                    width: 420,
                  ),
                ),
              ),
              Text(
                'Lion',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 1),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 18,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArmadilloPage()));
                    },
                    child: Container(
                      child: Image(
                          image: AssetImage('assets/armadillo.png'),
                          height: 118),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 46),
                  Text(
                    'Armadillo',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 75),
                  Text(
                    'Swipe -->',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
