import 'package:flutter/material.dart';
import 'package:mixeditems/providers/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mixed List'),
      ),
      body: _buildListView(context),
    );
  }

  Widget _buildListView(BuildContext context) {
    final customProvider = Provider.of<CustomProvider>(context, listen: false);
    customProvider.loadListItems();

    return ListView.builder(
      shrinkWrap: true,
      itemCount: customProvider.listItems.length,
      itemBuilder: (context, index) {
        final item = customProvider.listItems[index];

        return ListTile(
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          title: item.buildHead(context),
          subtitle: item.buildBody(context),
        );
      },
    );
  }
}
