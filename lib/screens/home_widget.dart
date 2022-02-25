import 'package:flutter/material.dart';
import 'package:mixeditems/repository/widget_placeholder.dart';

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
    WidgetPlaceHolder _widgetPlaceHolder = WidgetPlaceHolder();
    List<Widget> homeWidgets = _widgetPlaceHolder.getHomeWidgets();

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
