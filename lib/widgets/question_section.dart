

import 'package:flutter/material.dart';

import '../models/listitem.dart';

class QuestionTextSection implements ListItem {
  final String headTitle;
  final String subTitle;

  QuestionTextSection(this.headTitle, this.subTitle);


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