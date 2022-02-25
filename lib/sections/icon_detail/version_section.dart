import 'package:flutter/material.dart';
import 'package:mixeditems/models/icon_item.dart';

class VersionSection extends StatelessWidget {
  IconItem iconItem;

  VersionSection(this.iconItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: ClipRRect(
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
      ),
    );

  }
}
