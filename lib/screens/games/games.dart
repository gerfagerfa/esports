import 'package:flutter/material.dart';

class Games extends StatefulWidget {
  @override
  _GamesState createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Games",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}