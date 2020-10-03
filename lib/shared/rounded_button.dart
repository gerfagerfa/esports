import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  final String text;
  final Color color;
  final Function onPress;

  RoundedButton({@required this.text, @required this.color, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: InkWell(
        onTap: () {
          onPress();
        },
        child: Container(
          height: 55,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}