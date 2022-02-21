import 'package:flutter/material.dart';
import 'package:mixeditems/repository/repo.dart';

import '../models/listitem.dart';

class ExpandableListSection implements ListItem {
  final String title;

  ExpandableListSection(this.title);

  //Expandable List starts.

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpansionTile(
          title: Text(title),
          controlAffinity: ListTileControlAffinity.leading,
          children: <Widget>[
            ListTile(title: Text('This is tile number 1')),
            ListTile(title: Text('This is tile number 2')),
            ListTile(title: Text('This is tile number 3')),
            ListTile(title: Text('This is tile number 4')),
            ListTile(title: Text('This is tile number 5')),
          ],
        ),
        ExpansionTile(
          title: Text(title),
          controlAffinity: ListTileControlAffinity.leading,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                        child: Text('${index + 1}'),
                      ),
                      title: Text('Item ${index + 1}'));
                },
                itemCount: 5,
                shrinkWrap: true,
              ),
            )
          ],
        ),
      ],
    );
  }
}
