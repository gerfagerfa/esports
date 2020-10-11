import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:esports/shared/custom_filled_field.dart';
import 'package:esports/shared/popular_channel_item.dart';

class PopularChannels extends StatelessWidget {

  final Function onPress;

  PopularChannels({@required this.onPress});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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

                SizedBox(
                  width: 24,
                ),

                Expanded(
                  child: CustomFilledField(
                    label: "Search games, channels...",
                    iconData: Octicons.settings,
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Popular channels",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
                
                SizedBox(
                  height: 12,
                ),

                Text(
                  "Language: English",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),

              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 15,
                children: [

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_1.jpg",
                    name: "Sapphiron",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_2.jpg",
                    name: "Oodin",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_3.jpg",
                    name: "MeTaleiZer",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_4.jpg",
                    name: "RFGust",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_5.jpg",
                    name: "xLinux",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_6.jpg",
                    name: "mgpotonaxx",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_7.jpg",
                    name: "mian",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_8.jpg",
                    name: "Aquiles20",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_9.jpg",
                    name: "timothy",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_10.jpg",
                    name: "lunaticoo",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_11.jpg",
                    name: "Tsukii",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_12.jpg",
                    name: "Searinox",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_13.jpg",
                    name: "	xDeathWing",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_14.jpg",
                    name: "xJaina",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_15.jpg",
                    name: "Ka3l",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_16.jpg",
                    name: "Malygos",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_17.jpg",
                    name: "PLUT0N",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_18.jpg",
                    name: "jashirama",
                    variation: false,
                  ),

                  PopularChannelItem(
                    imageUrl: "assets/images/avatar_19.jpg",
                    name: "ESL",
                    variation: false,
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}