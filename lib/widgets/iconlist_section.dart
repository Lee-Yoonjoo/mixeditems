import 'package:flutter/material.dart';
import 'package:mixeditems/repository/repo.dart';

import '../models/iconitem.dart';
import '../models/listitem.dart';

class IconListSection implements ListItem {
  final String headerText;
  IconListSection(this.headerText);


  @override
  Widget buildHead(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Text(
        headerText.toUpperCase(),
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.black45,
        ),
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: createMockData(),
    );
  }

  List<IconItem> iconItemList = Repo().getIconListItems();
  List<Widget> createMockData(){
    return iconItemList.map((i) =>
    new ListTile(visualDensity: VisualDensity(horizontal: 0, vertical: -2),
      title: Text(i.name),
      subtitle: Text(i.latestAccess),
      leading: CircleAvatar(
        child: Icon(i.icon),
      ),)).toList();
  }
}
