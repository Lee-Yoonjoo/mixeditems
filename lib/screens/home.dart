
import 'package:flutter/material.dart';

import '../models/listitem.dart';

class MyApp extends StatelessWidget {
  final List<ListItem> items;

  const MyApp({Key? key, required this.items}) : super(key: key);

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
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              title:item.buildBody(context),
            );
          },
        ),
      ),
    );
  }
}