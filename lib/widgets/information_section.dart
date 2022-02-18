


import 'package:flutter/material.dart';

import '../models/listitem.dart';

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
