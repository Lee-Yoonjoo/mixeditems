import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mixeditems/models/iconitem.dart';
import 'package:mixeditems/models/listwidget.dart';
import 'package:mixeditems/providers/provider.dart';
import 'package:provider/provider.dart';

class HeadSection implements WidgetItem {
  IconItem iconItem;

  HeadSection(this.iconItem);

  @override
  Widget buildHead(BuildContext context) => const SizedBox.shrink();

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 30),
        CircleAvatar(
          child: Icon(iconItem.icon),
        ),
        SizedBox(height: 10),
        Text(
          iconItem.name,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Text(iconItem.latestAccess),
        SizedBox(height: 20),
      ],
    );
  }
}
