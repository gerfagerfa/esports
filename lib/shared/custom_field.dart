import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {

  final String label;
  final IconData iconData;

  CustomField({@required this.label, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: TextField(
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 16,
            color: Colors.grey[500],
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: UnderlineInputBorder(      
            borderSide: BorderSide(
              color: Colors.grey[500],
              width: 2,  
            ),
          ),  
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[500],
              width: 2,  
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[500],
              width: 2,  
            ),
          ),
          suffixIcon: 
          iconData != null 
          ? Icon(
            iconData,
            color: Colors.grey[500],
          )
          : Container(),
        ),
      ),
    );
  }
}