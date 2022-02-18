
import 'package:flutter/material.dart';

import '../models/listitem.dart';

class IconListHead implements ListItem {
  final String headerText;

  IconListHead(this.headerText);

  @override
  Widget buildHead(BuildContext context) {
    return SizedBox(
      height: 15,
      child : Padding(
      padding: EdgeInsets.only(left:10, right:10),
      child: Text(
        headerText.toUpperCase(),
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.black45,
        ),
      ),
    ),
    );
  }

  @override
  Widget buildBody(BuildContext context) => const SizedBox.shrink();
}
