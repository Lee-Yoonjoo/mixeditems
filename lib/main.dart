import 'package:flutter/material.dart';

void main() {
  List<Access> accessList = [
    Access('Fit', '5 minutes ago', Icons.fitness_center),
    Access('Emergency Information', '8 minutes ago', Icons.warning),
    Access('Maps', '8 minutes ago', Icons.pin_drop),
  ];
  const switchText = 'Latest Location ';
  const headText = 'Latest Access';
  runApp(
    MyApp(
      items: List<ListItem>.generate(
        100,
        (i) => i % 6 == 0
            ? SwitchItem(switchText, false)
            : IconListSection(headText, accessList),
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

abstract class ListItem {
  Widget buildHead(BuildContext context);

//  Widget buildIconListHead(BuildContext context);
  Widget buildBody(BuildContext context);
}

class SwitchItem implements ListItem {
  final String switchText;
  final bool isOn;

  SwitchItem(this.switchText, this.isOn);

  @override
  Widget buildHead(BuildContext context) => const SizedBox.shrink();

  @override
  Widget buildBody(BuildContext context) {
    return SwitchListTile(
      title: Text(switchText),
      value: isOn,
      onChanged: (bool isOn) {
        if (isOn) {
          isOn = false;
        } else {
          isOn = true;
        }
      },
      // secondary: const Icon(Icons.lightbulb_outline),
    );
  }
}

class IconListSection implements ListItem {
  final String headerText;
  final List<Access> accessList;

/*  final String name;
  final IconData icon;
  final String subName;*/

  IconListSection(this.headerText, this.accessList);

  @override
  Widget buildHead(BuildContext context) {
    return Text(
      headerText.toUpperCase(),
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.black45,
        fontFamily: 'muli',
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: accessList.length,
      itemBuilder: (context, index) {
        return ListTile(

          title: Text(accessList[index].name),
          subtitle: Text(accessList[index].latestAccess),
          leading: CircleAvatar(
            child: Icon(accessList[index].iconData),
          ),

        );
      },
    );
  }
}

class Access {
  String name;
  String latestAccess;
  IconData iconData;

  Access(this.name, this.latestAccess, this.iconData);
}
