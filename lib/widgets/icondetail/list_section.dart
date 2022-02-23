
import 'package:flutter/material.dart';
import 'package:mixeditems/models/iconitem.dart';
import 'package:mixeditems/models/listwidget.dart';
import 'package:mixeditems/providers/provider.dart';
import 'package:provider/provider.dart';

class ListSection implements WidgetItem {
  IconItem iconItem;

  ListSection(this.iconItem);

  @override
  Widget buildHead(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Text(
        iconItem.name.toUpperCase(),
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.black45,
        ),
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _createMockData(context),
    );
  }

  List<Widget> _createMockData(BuildContext context) {
    final customProvider = Provider.of<CustomProvider>(context, listen: false);
    customProvider.loadIconDetailWidgets(iconItem);
    List<int> itemList = customProvider.intItems;
    return itemList
        .map((item) => ListTile(
      visualDensity: const VisualDensity(horizontal: 0, vertical: -2),

      onTap: (){

      },
    ))
        .toList();
  }
}
