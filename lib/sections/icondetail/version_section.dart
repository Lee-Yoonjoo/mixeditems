import 'package:flutter/material.dart';
import 'package:mixeditems/models/icon_item.dart';
import 'package:mixeditems/widgets/widget_model.dart';

class VersionSection implements WidgetItem {
  IconItem iconItem;

  VersionSection(this.iconItem);

  @override
  Widget buildHead(BuildContext context) => const SizedBox(height: 10);

  @override
  Widget buildBody(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10, top: 10,bottom: 10),
          child: Text(
            'Version ${iconItem.version}',
            style: const TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
