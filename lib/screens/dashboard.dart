import 'package:flutter/material.dart';
import 'draw/draw.dart';
import 'puzzles/puzzle.dart';
import 'quiz/quiz.dart';
import 'stories/story.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 14, 95, 127),
          Color.fromARGB(255, 98, 189, 222)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(height: 0),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Pick a Course',
                    style: TextStyle(
                      fontFamily: 'LoveYaLikeASister',
                      color: Colors.white,
                      fontSize: 46.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              height: MediaQuery.of(context).size.height - 110.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 60),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Story()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Color(0xFFFF585D),
                        width: 370,
                        height: 115,
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.bottomLeft,
                                image: AssetImage("assets/book.jpg"),
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(Icons.menu_book,
                                color: Colors.white, size: 40),
                            SizedBox(width: 10),
                            Text(
                              'Stories',
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
                          MaterialPageRoute(builder: (context) => Drawing()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Color(0xFF9343D4),
                        width: 370,
                        height: 115,
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.bottomLeft,
                                image: AssetImage("assets/d.png"),
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(Icons.brush, color: Colors.white, size: 40),
                            SizedBox(width: 10),
                            Text(
                              'Draw',
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
                          MaterialPageRoute(builder: (context) => Quiz()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.pinkAccent[200],
                        width: 370,
                        height: 115,
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.bottomLeft,
                                image: AssetImage("assets/kids.jpg"),
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(Icons.quiz, color: Colors.white, size: 40),
                            SizedBox(width: 10),
                            Text(
                              'Quiz Time',
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
                          MaterialPageRoute(builder: (context) => Puzzle()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Color(0xFF5DDEE8),
                        width: 370,
                        height: 115,
                        child: Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.bottomLeft,
                                image: AssetImage("assets/puzzle.jpg"),
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(Icons.extension,
                                color: Colors.white, size: 40),
                            SizedBox(width: 10),
                            Text(
                              'Puzzles',
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
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
