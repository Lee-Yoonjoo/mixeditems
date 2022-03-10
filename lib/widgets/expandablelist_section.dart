import 'package:flutter/material.dart';
import 'package:mixeditems/repository/repo.dart';
import '../models/listitem.dart';

class ExpandableListSection implements ListItem {
  final String title;
  final Repo _repo;

  ExpandableListSection(this.title, this._repo);

  @override
  Widget buildHead(BuildContext context) => const SizedBox.shrink();

  @override
  Widget buildBody(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      controlAffinity: ListTileControlAffinity.leading,
      children: _createMockData(),
    );
  }



  List<Widget> _createMockData() {
    List<int> mockData = _repo.getMockData();
    return mockData
        .map((i) => ListTile(
              leading: CircleAvatar(child: Text('$i')),
              title: Text('This is item number $i'),
            ))
        .toList();
  }
}
