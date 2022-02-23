
import 'package:flutter/material.dart';
import 'package:mixeditems/models/iconitem.dart';
import 'package:mixeditems/models/listwidget.dart';
import 'package:mixeditems/providers/provider.dart';
import 'package:provider/provider.dart';

class ListSection implements WidgetItem {
  IconItem iconItem;
  Map<String, List<Map<String,String>>> infolist;

  ListSection(this.iconItem, this.infolist);

  @override
  Widget buildHead(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Text(infolist.keys.first,
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

    List<Map<String,String>> itemList = infolist.values.first;
    return itemList
        .map((item) => ListTile(
      visualDensity: const VisualDensity(horizontal: 0, vertical: -2),

      title: Text(item.keys.toString()),
      subtitle: Text(item.values.toString()),
      onTap: (){

      },
    ))
        .toList();
  }
}
