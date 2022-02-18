import 'package:flutter/material.dart';
import 'package:mixeditems/models/listitem.dart';
import 'package:mixeditems/widgets/expendablelist_section.dart';
import 'package:mixeditems/widgets/iconlist_section.dart';
import 'package:mixeditems/widgets/iconlistitem_section.dart';
import 'package:mixeditems/widgets/information_section.dart';
import 'package:mixeditems/widgets/question_section.dart';
import 'package:mixeditems/widgets/switch_section.dart';

void main() {

  List<ListItem> listItems = [
    SwitchItem('Latest Location', true),
    IconListHead('Latest Access'),
    IconListItem('Fit', '5 minutes ago', Icons.fitness_center),
    IconListItem('Emergency Information', '8 minutes ago', Icons.warning),
    IconListItem('Maps', '8 minutes ago', Icons.pin_drop),
    ExpandableListSection('See all'),
    QuestionTextSection('Welche Apps dürfen den Standort ermitteln?',
        '28 von 90 Apps haben Zugriff auf den Standort'),
    InfoSection('Location Service',
        "You can allow your phone to use GPS, Wi-Fi networks, and cellular networks to determine your approximate location. Applications that have permission can use this information to provide location-based services, such as checking in for a flight, viewing traffic information, finding nearby restaurants, or tagging your photos with location information.")
  ];

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
          // Let the ListView know how many items it needs to build.
          itemCount: items.length,
          // Provide a builder function. This is where the magic happens.
          // Convert each item into a widget based on the type of item it is.
          itemBuilder: (context, index) {
            final item = items[index];

            return ListTile(
              title: item.buildHead(context),
              subtitle: item.buildBody(context),
            );
          },
        ),
      ),
    );
  }
}



