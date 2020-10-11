import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  final String imageUrl;
  final String name;

  CategoryItem({@required this.imageUrl, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            height: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.fitHeight,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),

          SizedBox(
            height: 8,
          ),

          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

        ],
      ),
    );
  }
}