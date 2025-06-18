import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:alpha_mind/widgets/delayed_animation.dart';
import 'package:alpha_mind/pages/character_listing_screen.dart';
import 'pages/intro.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive); // Fullscreen
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  final int delayedAmount = 200; // Faster animations
  late double _scale;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    _scale = 1 - _controller.value;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFF977C), Color(0xFFFFCBA4)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 40.0),
                  AvatarGlow(
                    endRadius: 90,
                    duration: Duration(seconds: 1), // Faster glow
                    glowColor: Colors.white,
                    repeat: true,
                    showTwoGlows: true,
                    repeatPauseDuration: Duration(seconds: 1),
                    startDelay: Duration(milliseconds: 500),
                    child: Material(
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundImage: ExactAssetImage('assets/redpanda.png'),
                        backgroundColor: Colors.grey[100],
                        radius: 50.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  DelayedAnimation(
                    child: Text(
                      "Hi There!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 39.0,
                        fontFamily: 'Nunito',
                        color: color,
                      ),
                    ),
                    delay: delayedAmount + 400,
                  ),
                  DelayedAnimation(
                    child: Text(
                      "I'm Jack",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 39.0,
                        fontFamily: 'Nunito',
                        color: color,
                      ),
                    ),
                    delay: delayedAmount + 800,
                  ),
                  SizedBox(height: 40.0),
                  DelayedAnimation(
                    child: Text(
                      "Your New Personal",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w500,
                        color: color,
                        fontFamily: 'PTSans',
                      ),
                    ),
                    delay: delayedAmount + 1200,
                  ),
                  DelayedAnimation(
                    child: Text(
                      "Learning Companion",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w500,
                        color: color,
                        fontFamily: 'PTSans',
                      ),
                    ),
                    delay: delayedAmount + 1400,
                  ),
                  SizedBox(height: 40),
                  DelayedAnimation(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                            size: 24,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              "It is a cross-platform application which tries to improvise a child’s cognitive learning skills by utilizing gamification techniques to explain simple concepts of numbers, colors and nature.",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w100,
                                color: color,
                                fontFamily: 'PTSans',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    delay: delayedAmount + 1600,
                  ),
                  SizedBox(height: 50.0),
                  DelayedAnimation(
                    child: GestureDetector(
                      onTapDown: _onTapDown,
                      onTapUp: _onTapUp,
                      child: Transform.scale(
                        scale: _scale,
                        child: _animatedButtonUI,
                      ),
                    ),
                    delay: delayedAmount + 1800,
                  ),
                  SizedBox(height: 40.0),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CharacterListingScreen(),
                        ),
                      );
                    },
                    child: DelayedAnimation(
                      child: Text(
                        "learn more about me".toUpperCase(),
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          color: color,
                        ),
                      ),
                      delay: delayedAmount + 2000,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget get _animatedButtonUI => Builder(
        builder: (context) => Container(
          height: 60,
          width: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: Colors.white,
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IntroPage()),
              );
            },
            child: Center(
              child: Text(
                'Hello Jack!',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'NunitoSans',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
