import 'package:flutter/material.dart';
import 'package:esports/shared/rounded_label.dart';

class ChannelItemResult extends StatelessWidget {

  final bool live;
  final String name;

  ChannelItemResult({@required this.live, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey[800]),
        ),
      ),
      child: Row(
        children: [

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
                "Channel",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),

            ],
          ),

          Expanded(
            child: Container(),
          ),

          live
          ? RoundedLabel(
            small: true,
            color: Colors.red,
            text: "Live",
          )
          : Container(),

        ],
      ),
    );
  }
}