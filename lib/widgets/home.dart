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
    return Consumer<CustomProvider>(
      builder: (context, provider, index) => ListView.builder(
        shrinkWrap: true,
        itemCount: provider.listItems.length,
        itemBuilder: (context, index) {
          final item = provider.listItems[index];
          return ListTile(
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            title: item.buildHead(context),
            subtitle: item.buildBody(context),
          );
        },
      ),
    );
  }
}
