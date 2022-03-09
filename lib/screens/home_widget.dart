import 'package:flutter/material.dart';
import 'package:mixeditems/sections/home/expandable_list_section.dart';
import 'package:mixeditems/sections/home/icon_list_section.dart';
import 'package:mixeditems/sections/home/info_section.dart';
import 'package:mixeditems/sections/home/question_section.dart';
import 'package:mixeditems/sections/home/switch_section.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mixed List'),
      ),
      body: _buildListView(context),
    );
  }

  Widget _buildListView(BuildContext context) {
    List<Widget> homeWidgets = _getHomeWidgets();

    return ListView.builder(
      shrinkWrap: true,
      itemCount: homeWidgets.length,
      itemBuilder: (context, index) {
        final item = homeWidgets[index];

        return ListTile(
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          title: item,
          //subtitle: item.buildBody(context),
        );
      },
    );
  }
}

List<Widget> _getHomeWidgets() {
  return [
    const SwitchItem('Latest Location', true),
    const IconListSection('Latest Access'),
    const ExpandableListSection(title: 'See all'),
    const QuestionSection('Welche Apps dürfen den Standort ermitteln?',
        '28 von 90 Apps haben Zugriff auf den Standort'),
    const InfoSection('Location Service',
        "You can allow your phone to use GPS, Wi-Fi networks, and cellular networks to determine your approximate location. Applications that have permission can use this information to provide location-based services, such as checking in for a flight, viewing traffic information, finding nearby restaurants, or tagging your photos with location information.")
  ];
}
