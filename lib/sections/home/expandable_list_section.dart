import 'package:flutter/material.dart';
import 'package:mixeditems/providers/icon_list_provider.dart';
import 'package:provider/provider.dart';

class ExpandableListSection extends StatelessWidget {
  const ExpandableListSection({Key? key, required this.title})
      : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      controlAffinity: ListTileControlAffinity.leading,
      children: _createMockData(context),
    );
  }

  List<Widget> _createMockData(BuildContext context) {
    final customProvider =
        Provider.of<IconListProvider>(context, listen: false);
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
