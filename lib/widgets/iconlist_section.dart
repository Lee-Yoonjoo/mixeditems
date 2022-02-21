import 'package:flutter/material.dart';
import 'package:mixeditems/repository/repo.dart';

import '../models/iconitem.dart';
import '../models/listitem.dart';

class IconListSection implements ListItem {
  final String headerText;

  IconListSection(this.headerText);

  List<IconItem> iconItemList = Repo().getIconListItems();

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Text(
            headerText.toUpperCase(),
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -3),
          title: Text(iconItemList[0].name),
          subtitle: Text(iconItemList[0].latestAccess),
          leading: CircleAvatar(
            child: Icon(iconItemList[0].icon),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -3),
          title: Text(iconItemList[1].name),
          subtitle: Text(iconItemList[1].latestAccess),
          leading: CircleAvatar(
            child: Icon(iconItemList[1].icon),
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -3),
          title: Text(iconItemList[2].name),
          subtitle: Text(iconItemList[2].latestAccess),
          leading: CircleAvatar(
            child: Icon(iconItemList[2].icon),
          ),
        ),
      ],
    );
  }
}
