import 'package:flutter/material.dart';

import '../models/listitem.dart';

class ExpandableListSection implements ListItem {
  final String title;

  ExpandableListSection(this.title);

  @override
  Widget buildBody(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.keyboard_arrow_right),
      title: Text(
        title.toUpperCase(),
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black45,
        ),
      ),
    );
  }

}