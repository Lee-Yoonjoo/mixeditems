import 'package:flutter/material.dart';

abstract class WidgetItem {
  Widget buildHead(BuildContext context);

  Widget buildBody(BuildContext context);
}
