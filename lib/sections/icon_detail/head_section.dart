import 'package:flutter/material.dart';
import 'package:mixeditems/models/icon_item.dart';

class HeadSection extends StatelessWidget {
  IconItem iconItem;

  HeadSection(this.iconItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 30),
        CircleAvatar(
          child: Icon(iconItem.icon),
        ),
        SizedBox(height: 10),
        Text(
          iconItem.name,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Text(iconItem.latestAccess),
        SizedBox(height: 20),
      ],
    );
  }
}
