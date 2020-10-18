import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:esports/utils/constants.dart';
import 'package:esports/utils/data.dart';
import 'package:esports/screens/search/game_item_result.dart';
import 'package:esports/shared/rounded_label.dart';
import 'package:esports/shared/tag_pill.dart';

class GameDetail extends StatelessWidget {

  final Game game;
  final Function onPress;

  GameDetail({@required this.game, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Column(
        children: [

          Container(
            height: 300,
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/egames.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Stack(
                children: [

                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        GestureDetector(
                          onTap: () {
                            onPress();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),

                        Row(
                          children: [

                            Container(
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
                                    game.users,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  
                                ],
                              )
                            ),

                            SizedBox(
                              width: 16,
                            ),

                            RoundedLabel(
                              small: true,
                              color: Colors.red,
                              text: "Live",
                            ),

                            SizedBox(
                              width: 16,
                            ),

                            Icon(
                              Icons.dashboard,
                              color: Colors.white,
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        Icons.fullscreen,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  Row(
                    children: [

                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/avatar_19.jpg"), 
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),

                      SizedBox(
                        width: 16,
                      ),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              game.subTitle,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              game.viewers + " viewers",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),
                      ),

                      SizedBox(
                        width: 16,
                      ),

                      RoundedLabel(
                        small: true,
                        color: Colors.grey[200],
                        text: "Subscribe",
                      ),

                    ],
                  ),

                  Divider(
                    thickness: 1,
                    color: Colors.grey[800],
                  ),

                  Text(
                    game.description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Divider(
                    thickness: 1,
                    color: Colors.grey[800],
                  ),

                  GameItemResult(
                    name: game.title,
                    imageUrl: game.imageUrl,
                    morePadding: false,
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  Wrap(
                    alignment: WrapAlignment.start,
                    runSpacing: 12,
                    spacing: 12,
                    children: [
                      TagPill(tag: "eng"),
                      TagPill(tag: "esport"),
                      TagPill(tag: "csgo"),
                      TagPill(tag: "esl"),
                      TagPill(tag: "shooters"),
                      TagPill(tag: "tournaments"),
                    ],
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}