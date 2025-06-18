import 'package:flutter/material.dart';
import 'fruits/fruits.dart';
import 'animals/animals.dart';
import 'plants/plants.dart';

class Match extends StatefulWidget {
  @override
  _MatchState createState() => _MatchState();
}

class _MatchState extends State<Match> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Image(
                    height: 180,
                    width: 210,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    image: AssetImage('assets/Bevis.png')),
                Column(
                  children: <Widget>[
                    Text(
                      "Hey!",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 35),
                    ),
                    Text(
                      "I'm Bevis.",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Nunito',
                          fontSize: 35),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepOrangeAccent.withOpacity(0.3),
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.palette, // 🎨 Color-related icon
                  size: 40,
                  color: const Color.fromARGB(255, 193, 69, 224),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    "Match objects with\ntheir Colors.",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Nunito',
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColorGameOne()));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.purpleAccent[700],
                width: 350,
                height: 130,
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24.0),
                      child: Image(
                        image: AssetImage('assets/flowers.png'),
                        height: 102,
                      ),
                    ),
                    SizedBox(width: 37),
                    Text(
                      'Plants',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'LoveYaLikeASister',
                          fontSize: 32),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColorGame()));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.greenAccent[400],
                width: 350,
                height: 130,
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24.0),
                      child: Container(
                        color: Colors.white,
                        height: 110,
                        child: Image(
                          image: AssetImage('assets/fruit.png'),
                          height: 100,
                        ),
                      ),
                    ),
                    SizedBox(width: 40),
                    Text(
                      'Fruits',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'LoveYaLikeASister',
                          fontSize: 32),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColorGameTwo()));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.redAccent,
                width: 350,
                height: 130,
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24.0),
                      child: Container(
                        color: Colors.white,
                        height: 110,
                        child: Image(image: AssetImage('assets/anim.png')),
                      ),
                    ),
                    SizedBox(width: 22),
                    Text(
                      'Animals',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'LoveYaLikeASister',
                          fontSize: 32),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
