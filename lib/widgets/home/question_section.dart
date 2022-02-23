import 'package:flutter/material.dart';
import '../../models/listwidget.dart';

class QuestionTextSection implements WidgetItem {
  final String headTitle;
  final String subTitle;

  QuestionTextSection(this.headTitle, this.subTitle);

  @override
  Widget buildHead(BuildContext context) => const SizedBox.shrink();

  @override
  Widget buildBody(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Text(
          headTitle,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black45,
          ),
        ),
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(
          fontSize: 13,
          color: Colors.black45,
        ),
      ),
    );
  }
}
