import 'package:flutter/material.dart';
import 'package:esports/utils/data.dart';
import 'package:esports/shared/broadcast_item.dart';
import 'package:esports/shared/rounded_label.dart';

class GameItem extends StatelessWidget {

  final Game game;
  final Function onPress;

  GameItem({@required this.game, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Column(
        children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Flexible(
                  child: Text(
                    game.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(
                  width: 16,
                ),

                RoundedLabel(
                  small: true,
                  color: Colors.red,
                  text: "Live",
                ),

              ],
            ),
          ),

          BroadcastItem(
            title: game.subTitle,
            imageUrl: game.imageUrl,
            live: true,
            users: game.users,
          ),

          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 32,),
            child: Text(
              game.description,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

        ],
      ),
    );
  }
}