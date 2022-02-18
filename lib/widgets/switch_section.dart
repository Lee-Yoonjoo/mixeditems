
import 'package:flutter/material.dart';

import '../models/listitem.dart';

class SwitchItem implements ListItem {
  final String switchText;
  final bool isOn;

  SwitchItem(this.switchText, this.isOn);


  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          color: Colors.amber,
          child: SwitchListTile(
            title: Text(
              switchText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
            value: isOn,
            onChanged: (bool isOn) {
            },
          ),
        ),
      ),
    );
  }
}
