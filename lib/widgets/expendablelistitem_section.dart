
import 'package:flutter/material.dart';

import '../models/listitem.dart';

class ExpandableListItemSection implements ListItem {
  final int index;
  final bool isOpen;

  ExpandableListItemSection(this.index, this.isOpen);

  //Expandable List starts.

  @override
  Widget buildBody(BuildContext context) {
    //bool isOpen;
    return
      isOpen?
      ListTile(
        leading: CircleAvatar(
          child: Text('$index'),
        ),
        title: Text(
          'Item $index',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Colors.black45,
          ),
        ),
        onTap: (){  },
      ) :SizedBox.shrink();
  }
}
