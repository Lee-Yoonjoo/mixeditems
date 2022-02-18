import 'package:flutter/material.dart';

//view models..?
abstract class ListItem {
  Widget buildHead(BuildContext context);

//  Widget buildIconListHead(BuildContext context);
  Widget buildBody(BuildContext context);
}