import 'package:flutter/material.dart';
import 'package:mixeditems/models/icon_item.dart';
import 'package:mixeditems/repository/widget_placeholder.dart';

class IconDetailWidget extends StatelessWidget {
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
    WidgetPlaceHolder _widgetPlaceHolder = WidgetPlaceHolder();
    List<Widget> iconDetailWidgets = _widgetPlaceHolder.getIconDetailWidgets(iconItem);

    return Container(
      color: const Color(0xFFEEEEEE),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: iconDetailWidgets.length,
        itemBuilder: (context, index) {
          final item = iconDetailWidgets[index];

          return ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              title: item);
        },
      ),
    );
  }
}
