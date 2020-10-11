import 'package:flutter/material.dart';

class GameItemResult extends StatelessWidget {

  final String imageUrl;
  final String name;
  final bool morePadding;

  GameItemResult({@required this.imageUrl, @required this.name, @required this.morePadding});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: morePadding ? 16 : 0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey[800]),
        ),
      ),
      child: Row(
        children: [

          Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(
            width: 16,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              Text(
                "Game",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}