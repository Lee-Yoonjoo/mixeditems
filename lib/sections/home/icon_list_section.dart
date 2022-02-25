import 'package:flutter/material.dart';
import 'package:mixeditems/models/icon_item.dart';
import 'package:mixeditems/providers/icon_list_provider.dart';
import 'package:mixeditems/screens/icon_detail_widget.dart';
import 'package:provider/provider.dart';

class IconListSection extends StatelessWidget {
  const IconListSection(this.headerText, {Key? key}) : super(key: key);
  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_buildHead(context), _buildBody(context)],
    );
  }

  Widget _buildHead(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Text(
        headerText.toUpperCase(),
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.black45,
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _createMockData(context),
    );
  }

  List<Widget> _createMockData(BuildContext context) {
    final customProvider =
        Provider.of<IconListProvider>(context, listen: false);
    customProvider.loadIconItems();
    List<IconItem> iconItemList = customProvider.iconItems;
    return iconItemList
        .map((iconItem) => ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
              title: Text(iconItem.name),
              subtitle: Text(iconItem.latestAccess),
              leading: CircleAvatar(
                child: Icon(iconItem.icon),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        IconDetailWidget(iconItem: iconItem)));
              },
            ))
        .toList();
  }
}
