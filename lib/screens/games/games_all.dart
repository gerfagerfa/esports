import 'package:flutter/material.dart';
import 'package:esports/utils/data.dart';
import 'package:esports/utils/constants.dart';
import 'package:esports/screens/games/game_item.dart';

class GamesAll extends StatelessWidget {

  final Function onPress;

  GamesAll({@required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(
                    height: 32,
                    child: Image.asset(
                      "assets/icons/joystick.png",
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(
                    width: 16,
                  ),

                  Expanded(
                    child: Container(
                      height: 48,
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            "All Games",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[500],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: getGames().map((item) => GameItem(
                    game: item, 
                    onPress: () {
                      onPress(item);
                    },
                  )).toList(),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}