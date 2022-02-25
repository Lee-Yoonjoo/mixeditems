

import 'package:flutter/material.dart';
import 'package:mixeditems/models/icon_item.dart';
import 'package:mixeditems/providers/icon_list_provider.dart';
import 'package:provider/provider.dart';

class IconDetailWidget extends StatelessWidget{
  const IconDetailWidget({Key? key, required this.iconItem}) : super(key: key);

  final IconItem iconItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Info'),
      ),
      body: _buildListView(context),
    );
  }

  Widget _buildListView(BuildContext context) {
    final customProvider = Provider.of<IconListProvider>(context, listen: false);
    customProvider.loadIconDetailWidgets(iconItem);

    return Container (
      color: const Color(0xFFEEEEEE),
      child:    ListView.builder(
        shrinkWrap: true,
        itemCount: customProvider.iconDetailWidgets.length,
        itemBuilder: (context, index) {
          final item = customProvider.iconDetailWidgets[index];

          return ListTile(
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            title: item
          );
        },
      ),
    );


  }
}