import 'package:flutter/material.dart';
import 'package:mixeditems/repository/repo.dart';

import '../models/listitem.dart';

class ExpandableListSection implements ListItem {
  final String title;

  ExpandableListSection(this.title);

  //Expandable List starts.

  @override
  Widget buildBody(BuildContext context) {
    return ExpansionTile(
          title: Text(title),
          controlAffinity: ListTileControlAffinity.leading,
          children: <Widget>[
            ListTile(leading: CircleAvatar(child: Text('1')),title: Text('This is tile number 1')),
            ListTile(leading: CircleAvatar(child: Text('2')),title: Text('This is tile number 2')),
            ListTile(leading: CircleAvatar(child: Text('3')),title: Text('This is tile number 3')),
            ListTile(leading: CircleAvatar(child: Text('4')),title: Text('This is tile number 4')),
            ListTile(leading: CircleAvatar(child: Text('5')),title: Text('This is tile number 5')),
          ],
    );
  }
}
