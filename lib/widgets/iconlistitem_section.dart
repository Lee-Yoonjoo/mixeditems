
import 'package:flutter/material.dart';

import '../models/listitem.dart';

class IconListItem implements ListItem {

  String name;
  String latestAccess;
  IconData icon;
  IconListItem(this.name, this.latestAccess, this.icon);

  @override
  Widget buildHead(BuildContext context) => const SizedBox.shrink();

  @override
  Widget buildBody(BuildContext context) {

    return   ListTile(
      visualDensity: VisualDensity(horizontal: 0, vertical: -3),
          title: Text(name),
          subtitle: Text(latestAccess),
          leading: CircleAvatar(
            child: Icon(icon),
          ),
    );


  }

}
