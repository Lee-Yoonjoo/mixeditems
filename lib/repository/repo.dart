import 'package:flutter/material.dart';
import 'package:mixeditems/models/icon_detail.dart';
import 'package:mixeditems/models/icon_item.dart';

class Repo {
  List<IconItem> getIconListItems() {
    return [
      IconItem('Fit', '5 minutes ago', Icons.fitness_center, '0.229.1'),
      IconItem('Emergency Information', '8 minutes ago', Icons.warning,
          '355.0.0.11.108'),
      IconItem('Maps', '8 minutes ago', Icons.pin_drop, '11.18.3'),
    ];
  }

  List<int> getMockData() {
    return [1, 2, 3, 4, 5];
  }

  List<IconDetail> getDataUsageList() {
    return [
      IconDetail('Mobile Data', '95.65 MB used since Nov 1, 2021'),
      IconDetail('Battery', '0% used since last fully charged'),
      IconDetail('Storage', '1.11 GB used in Internal storage'),
      IconDetail('Memory', 'No memory used in last 3 hours'),
    ];
  }

  List<IconDetail> getDataSettingsList() {
    return [
      IconDetail('Notifications', 'Allowed'),
      IconDetail(
          'Permissions', 'Camera, Contacts, Location, and Physical activity'),
      IconDetail('Set as default', 'None set as default'),
    ];
  }
}
