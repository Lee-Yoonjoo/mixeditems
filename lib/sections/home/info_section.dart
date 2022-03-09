import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  const InfoSection(this.infoTitle, this.infoDescription, {Key? key})
      : super(key: key);

  final String infoTitle;
  final String infoDescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            infoTitle,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Icon(Icons.info_outline_rounded, color: Colors.grey),
          ),
          Text(
            infoDescription,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
