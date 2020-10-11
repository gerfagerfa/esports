import 'package:flutter/material.dart';

class BottomNavigationItem extends StatelessWidget {

  final IconData iconData;
  final bool selected;
  final Function onPress;

  BottomNavigationItem({@required this.iconData, @required this.selected, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Center(
        child: Icon(
          iconData,
          color: selected ? Colors.white : Colors.grey[600],
          size: 30,
        ),
      ),
    );
  }
}