import 'package:flutter/material.dart';
import 'package:mixeditems/models/icon_detail.dart';
import 'package:mixeditems/providers/icon_list_provider.dart';
import 'package:provider/provider.dart';

class SettingsSection extends StatelessWidget {
  SettingsSection(this.title, {Key? key}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_buildHead(context), _buildBody(context)],
    );
  }

  Widget _buildHead(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.black45,
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _createMockData(context)),
        ),
      ),
    );
  }

  List<Widget> _createMockData(BuildContext context) {
    final customProvider =
        Provider.of<IconListProvider>(context, listen: false);
    customProvider.loadDataSettingsList();
    List<IconDetail> iconDetailList = customProvider.iconSettingsItems;

    return iconDetailList
        .map((item) => ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -1),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(item.title),
              ),
              subtitle: Text(item.subtitle),
              onTap: () {},
            ))
        .toList();
  }
}
