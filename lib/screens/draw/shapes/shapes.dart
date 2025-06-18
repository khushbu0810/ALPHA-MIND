import 'package:flutter/material.dart';

class Shapes extends StatelessWidget {
  final Gradient backgroundGradient = LinearGradient(
    colors: [Color(0xFFFFF3E0), Color.fromARGB(255, 236, 202, 192)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shapes'),
        backgroundColor: const Color.fromARGB(255, 245, 199, 164),
      ),
      body: PageView(
        children: <Widget>[
          // Page 1: Introduction
          Container(
            decoration: BoxDecoration(gradient: backgroundGradient),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Image(
                          height: 180,
                          width: 210,
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                          image: AssetImage('assets/Bevis.png'),
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Hey!",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Nunito',
                                fontSize: 35,
                              ),
                            ),
                            Text(
                              "I'm Bevis.",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Nunito',
                                fontSize: 35,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 248, 176, 154),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            "\t\tLet us learn more \t \n\t\t\t\tabout Shapes ",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Nunito',
                              fontSize: 35,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.school,
                          size: 40,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _lineWithIcon(
                            Icons.linear_scale, "Each line is called a side."),
                        _lineWithIcon(Icons.shape_line,
                            "Every shape has zero or more sides."),
                        _lineWithIcon(Icons.adjust,
                            "The point where two sides meet is called a vertex."),
                        SizedBox(
                          height: 90,
                        ),
                        _lineWithIcon(Icons.swipe, "Swipe to learn more..."),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Page 2: Square
          _shapePage(
            backgroundGradient,
            'assets/Square.png',
            'This is a Square',
            [
              _lineWithIcon(Icons.border_outer, 'A Square has four sides'),
              _lineWithIcon(Icons.more_vert, 'and four vertices'),
            ],
          ),

          // Page 3: Triangle
          _shapePage(
            backgroundGradient,
            'assets/Triangle.png',
            'This is a Triangle',
            [
              _lineWithIcon(Icons.change_history, 'A Triangle has three sides'),
              _lineWithIcon(Icons.more_vert, 'and three vertices'),
            ],
          ),

          // Page 4: Circle
          _shapePage(
            backgroundGradient,
            'assets/Circle.png',
            'This is a Circle',
            [
              _lineWithIcon(
                  Icons.radio_button_unchecked, 'A Circle has zero sides'),
              _lineWithIcon(Icons.not_interested, 'and zero vertices'),
            ],
          ),

          // Page 5: Rectangle
          _shapePage(
            backgroundGradient,
            'assets/Rectangle.png',
            'This is a Rectangle',
            [
              _lineWithIcon(Icons.crop_5_4, 'A Rectangle has four sides'),
              _lineWithIcon(Icons.more_vert, 'and four vertices'),
            ],
          ),
        ],
      ),
    );
  }

  // Helper: Widget with Icon and Text
  Widget _lineWithIcon(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepOrange, size: 28),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Nunito',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper: Page Template
  Widget _shapePage(
      Gradient gradient, String imagePath, String title, List<Widget> lines) {
    return Container(
      decoration: BoxDecoration(gradient: gradient),
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 180),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imagePath,
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              title,
              style: TextStyle(fontSize: 32, fontFamily: 'Nunito'),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: lines,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
