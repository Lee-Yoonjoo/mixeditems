import 'package:flutter/material.dart';
import 'package:mixeditems/repository/repo.dart';
import 'package:provider/provider.dart';
import '../models/listitem.dart';
import '../providers/provider.dart';

class ExpandableListSection implements ListItem {
  final String title;

  ExpandableListSection(this.title);

  @override
  Widget buildHead(BuildContext context) => const SizedBox.shrink();

  @override
  Widget buildBody(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      controlAffinity: ListTileControlAffinity.leading,
      children: _createMockData(context),
    );
  }



  List<Widget> _createMockData(BuildContext context) {
    final customProvider = Provider.of<CustomProvider>(context, listen: false);
    customProvider.loadIntItems();
    List<int> mockData = customProvider.intItems;
    return mockData
        .map((i) => ListTile(
              leading: CircleAvatar(child: Text('$i')),
              title: Text('This is item number $i'),
            ))
        .toList();
  }
}
