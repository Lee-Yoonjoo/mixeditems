import 'package:flutter/material.dart';
import 'package:mixeditems/providers/icon_list_provider.dart';
import 'package:provider/provider.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

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
    final customProvider = Provider.of<IconListProvider>(context, listen: false);
    customProvider.loadHomeWidgets();

    return ListView.builder(
      shrinkWrap: true,
      itemCount: customProvider.homeWidgets.length,
      itemBuilder: (context, index) {
        final item = customProvider.homeWidgets[index];

        return ListTile(
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          title: item,
          //subtitle: item.buildBody(context),
        );
      },
    );
  }
}
