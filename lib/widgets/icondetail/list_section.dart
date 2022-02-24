import 'package:flutter/material.dart';
import 'package:mixeditems/models/icondetail.dart';
import 'package:mixeditems/models/listwidget.dart';

class ListSection implements WidgetItem {
  List<IconDetail> infolist;

  ListSection(this.infolist);

  @override
  Widget buildHead(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      child: Text(
        infolist.first.head,
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
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 5, top:5 ,bottom: 5),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _createMockData(context)),

        ),
      ),
    );
  }

  List<Widget> _createMockData(BuildContext context) {
    List<IconDetail> itemList = infolist;
    return itemList
        .map((item) => ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -1),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(item.title),
              ),
              subtitle: Text(item.subtitle),
              onTap: () {},
            ))
        .toList();
  }
}
