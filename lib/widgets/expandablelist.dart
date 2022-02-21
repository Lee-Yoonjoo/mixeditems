import 'package:flutter/material.dart';
import 'package:mixeditems/repository/repo.dart';

import '../models/listitem.dart';

class ExpandableListSection implements ListItem {
  final String title;

  ExpandableListSection(this.title);

  //Expandable List starts.

  @override
  Widget buildBody(BuildContext context) {
    //bool isOpen;
    return ListTile(
      leading: Icon(Icons.keyboard_arrow_right),
      title: Text(
        title.toUpperCase(),
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black45,
        ),
      ),
      onTap: (){

        print('ExpandableList header is selected');
        Repo().getListItems().removeRange(6, 10);


      },
    );
  }
}
