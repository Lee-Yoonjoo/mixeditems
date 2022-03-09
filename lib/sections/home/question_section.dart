import 'package:flutter/material.dart';

class QuestionSection extends StatelessWidget {
  final String headTitle;
  final String subTitle;

  const QuestionSection(this.headTitle, this.subTitle, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
