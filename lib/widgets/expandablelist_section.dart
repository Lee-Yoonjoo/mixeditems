import 'package:flutter/material.dart';
import 'package:mixeditems/repository/repo.dart';

import '../models/listitem.dart';

class ExpandableListSection implements ListItem {
  final String title;
  ExpandableListSection(this.title);

  //Expandable List starts.

  @override
  Widget buildHead(BuildContext context) => const SizedBox.shrink();

  @override
  Widget buildBody(BuildContext context) {
    return ExpansionTile(
          title: Text(title),
          controlAffinity: ListTileControlAffinity.leading,
          children: createMockData(),
    );
  }

  List<int> mockData = [1,2,3,4,5];
  List<Widget> createMockData(){
    return mockData.map((i) =>
    new ListTile(leading: CircleAvatar(child: Text('$i')),title: Text('This is item number $i'),)).toList();
  }

}
