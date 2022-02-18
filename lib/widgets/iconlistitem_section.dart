
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

    return Align(
      alignment: Alignment(-1.2, 0),
      child:  ListTile(
        title: Text(name),
        subtitle: Text(latestAccess),
        leading: CircleAvatar(
          child: Icon(icon),
        ),
      ),
    );

  }

}
