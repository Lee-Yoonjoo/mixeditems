import 'package:flutter/material.dart';

void main() {
  List<Access> accessList = [
    Access('Fit', '5 minutes ago', Icons.fitness_center),
    Access('Emergency Information', '8 minutes ago', Icons.warning),
    Access('Maps', '8 minutes ago', Icons.pin_drop),
  ];

  List<ListItem> listItems = [
    SwitchItem('Latest Location', true),
    IconListSection('Latest Access', accessList),
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
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
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

class IconListSection implements ListItem {
  final String headerText;
  final List<Access> accessList;

  IconListSection(this.headerText, this.accessList);

  @override
  Widget buildHead(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Text(
        headerText.toUpperCase(),
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.black45,
        ),
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

class ExpandableListSection implements ListItem {
  final String title;

  ExpandableListSection(this.title);

  @override
  Widget buildHead(BuildContext context) {
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
    );
  }

  @override
  Widget buildBody(BuildContext context) => const SizedBox.shrink();
}

class QuestionTextSection implements ListItem {
  final String headTitle;
  final String subTitle;

  QuestionTextSection(this.headTitle, this.subTitle);

  @override
  Widget buildHead(BuildContext context) => const SizedBox.shrink();

  @override
  Widget buildBody(BuildContext context) {
    return  ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            headTitle,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
        ),
        subtitle: Text(subTitle,
          style: TextStyle(
            fontSize: 13,
            color: Colors.black45,
          ),),
      );

  }
}

class InfoSection implements ListItem {
  final String infoTitle;
  final String infoDescription;

  InfoSection(this.infoTitle, this.infoDescription);

  @override
  Widget buildHead(BuildContext context) => const SizedBox.shrink();
  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            infoTitle,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Icon(Icons.info_outline_rounded, color: Colors.grey),
          ),
          Text(infoDescription,
          textAlign: TextAlign.justify,),
        ],
      ),
    );

  }
}

class Access {
  String name;
  String latestAccess;
  IconData iconData;

  Access(this.name, this.latestAccess, this.iconData);
}
