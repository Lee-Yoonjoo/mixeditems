import 'package:flutter/material.dart';

abstract class ListItem {
  Widget buildHead(BuildContext context);

  Widget buildBody(BuildContext context);
}
