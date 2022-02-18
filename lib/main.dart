import 'package:flutter/material.dart';
import 'package:mixeditems/models/listitem.dart';
import 'package:mixeditems/repository/repo.dart';
import 'package:mixeditems/screens/home.dart';

void main() {
  List<ListItem> listItems = Repo().getListItems();
  runApp(
    MyApp(
      items: List<ListItem>.generate(
        listItems.length,
        (int index) => listItems[index],
        growable: false,
      ),
    ),
  );
}





