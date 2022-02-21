

import 'package:flutter/material.dart';
import 'package:mixeditems/models/listitem.dart';
import 'package:mixeditems/repository/repo.dart';

class MyApp extends StatelessWidget {

  MyApp({Key? key}) : super(key: key);

  List<ListItem> listItems = Repo().getListItems();
  @override
  Widget build(BuildContext context) {
    const title = 'Mixed List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),

        body: ListView.builder(
          shrinkWrap: true,
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            final item = listItems[index];

            return ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              title:item.buildHead(context),
              subtitle: item.buildBody(context),
            );
          },
        ),
      ),
    );
  }
}


