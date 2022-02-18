
import 'package:flutter/material.dart';

import '../models/listitem.dart';

class IconListHead implements ListItem {
  final String headerText;

  IconListHead(this.headerText);

  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:10, right:10, top: 10),
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

}
