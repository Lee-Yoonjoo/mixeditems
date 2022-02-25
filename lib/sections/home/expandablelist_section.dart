import 'package:flutter/material.dart';
import 'package:mixeditems/repository/repo.dart';
import 'package:provider/provider.dart';
import '../widget_model.dart';
import '../../providers/icon_list_provider.dart';

class ExpandableListSection implements WidgetItem {
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
    final customProvider = Provider.of<IconListProvider>(context, listen: false);
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
