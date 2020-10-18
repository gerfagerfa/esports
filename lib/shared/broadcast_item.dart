import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BroadcastItem extends StatelessWidget {

  final bool live;
  final String title;
  final String users;
  final String imageUrl;

  BroadcastItem({@required this.live, @required this.title, @required this.users, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [

          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 36,
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                color: Colors.black.withOpacity(0.6)
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Icon(
                    FontAwesome.users,
                    size: 12,
                    color: Colors.white,
                  ),

                  SizedBox(
                    width: 8,
                  ),

                  Text(
                    users,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  live
                  ? Row(
                    children: [

                      SizedBox(
                        width: 8,
                      ),

                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),

                    ],
                  )
                  : Container(
                    width: 1,
                  ),
                  
                ],
              )
            ),
          ),

        ],
      ),
    );
  }
}