import 'package:flutter/material.dart';

import '../models/listitem.dart';

class ExpandableListSection implements ListItem {
  final String title;

  ExpandableListSection(this.title);

  //Expandable List starts.

  @override
  Widget buildBody(BuildContext context) {
    //bool isOpen;
    return ExpansionPanelList(
      animationDuration: Duration(seconds: 1),
      dividerColor: Colors.grey,
      expandedHeaderPadding: EdgeInsets.all(5),
      children: [
        ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (context, isOpen) {
            return Text(
              title.toUpperCase(),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            );
          },
          body: Text( 'Item of Expandable List'),
        ),
      ],
    );
  }
}
