import 'package:flutter/material.dart';
import 'package:mixeditems/models/icon_item.dart';
import 'package:mixeditems/sections/icon_detail/head_section.dart';
import 'package:mixeditems/sections/icon_detail/settings_section.dart';
import 'package:mixeditems/sections/icon_detail/usage_section.dart';
import 'package:mixeditems/sections/icon_detail/version_section.dart';

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
    List<Widget> iconDetailWidgets = _getIconDetailWidgets(iconItem);

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

List<Widget> _getIconDetailWidgets(IconItem iconItem) {
  return [
    HeadSection(iconItem),
    UsageSection('Usage'),
    SettingsSection('App settings'),
    VersionSection(iconItem)
  ];
}
