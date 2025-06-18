import 'package:flutter/material.dart';
import '../screens/puzzles/animals/frpageone.dart';
import '../screens/puzzles/animals/frpagetwo.dart';
import '../screens/puzzles/animals/frpagethree.dart';

class FactPage extends StatefulWidget {
  @override
  _FactPageState createState() => _FactPageState();
}

class _FactPageState extends State<FactPage> {
  List<Widget> pages = [FronePage(), FrtwoPage(), FrthreePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, position) => pages[position],
      ),
    );
  }
}
