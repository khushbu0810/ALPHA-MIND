import 'package:flutter/material.dart';

class Numbers extends StatefulWidget {
  @override
  _NumbersState createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  final List<Map<String, dynamic>> leftItems = [
    {'image': 'assets/6.jpg', 'value': 6},
    {'image': 'assets/10.jpg', 'value': 10},
    {'image': 'assets/8.jpg', 'value': 8},
    {'image': 'assets/5.jpg', 'value': 5},
    {'image': 'assets/7.jpg', 'value': 7},
    {'image': 'assets/2.jpg', 'value': 2},
    {'image': 'assets/4.jpg', 'value': 4},
    {'image': 'assets/3.jpg', 'value': 3},
    {'image': 'assets/9.jpg', 'value': 9},
    {'image': 'assets/1.jpg', 'value': 1},
  ];

  final List<Map<String, dynamic>> rightItems = [
    {'text': 'Two', 'value': 2},
    {'text': 'One', 'value': 1},
    {'text': 'Four', 'value': 4},
    {'text': 'Ten', 'value': 10},
    {'text': 'Three', 'value': 3},
    {'text': 'Seven', 'value': 7},
    {'text': 'Five', 'value': 5},
    {'text': 'Nine', 'value': 9},
    {'text': 'Eight', 'value': 8},
    {'text': 'Six', 'value': 6},
  ];

  int? selectedLeft;
  int? selectedRight;
  bool showCenterMatch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match the Numbers'),
        backgroundColor: const Color.fromARGB(255, 66, 132, 74),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                // Left side: Number images
                Expanded(
                  child: ListView.builder(
                    itemCount: leftItems.length,
                    itemBuilder: (context, index) {
                      final item = leftItems[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedLeft = item['value'];
                          });
                          _checkMatch();
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: selectedLeft == item['value']
                                  ? Colors.green
                                  : Colors.grey,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            item['image'],
                            height: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(width: 12),

                // Right side: Number names
                Expanded(
                  child: ListView.builder(
                    itemCount: rightItems.length,
                    itemBuilder: (context, index) {
                      final item = rightItems[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedRight = item['value'];
                          });
                          _checkMatch();
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: selectedRight == item['value']
                                ? Colors.green[200]
                                : Colors.grey[200],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              item['text'],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // Center match overlay
          if (showCenterMatch)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    'Matched! 🎉',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _checkMatch() async {
    if (selectedLeft != null && selectedRight != null) {
      if (selectedLeft == selectedRight) {
        setState(() {
          showCenterMatch = true;
        });

        await Future.delayed(Duration(milliseconds: 250));

        setState(() {
          leftItems.removeWhere((item) => item['value'] == selectedLeft);
          rightItems.removeWhere((item) => item['value'] == selectedRight);
          selectedLeft = null;
          selectedRight = null;
          showCenterMatch = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Oops! Try again.'),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 1),
          ),
        );
        setState(() {
          selectedLeft = null;
          selectedRight = null;
        });
      }
    }
  }
}
