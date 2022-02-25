import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mixeditems/models/icon_item.dart';
import 'package:mixeditems/widgets/widget_model.dart';
import 'package:mixeditems/providers/icon_list_provider.dart';
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
