import 'package:flutter/material.dart';
import 'package:mixeditems/models/icon_detail.dart';
import 'package:mixeditems/models/icon_item.dart';
import 'package:mixeditems/repository/repo.dart';

class IconListProvider extends ChangeNotifier {
  final Repo _repo = Repo();
  List<IconItem> _iconItems = [];
  List<IconDetail> _iconUsageItems =[];
  List<IconDetail> _iconSettingsItems =[];
  List<int> _intItems = [];

  List<IconItem> get iconItems => _iconItems;

  List<int> get intItems => _intItems;
  List<IconDetail> get iconUsageItems => _iconUsageItems;
  List<IconDetail> get iconSettingsItems => _iconSettingsItems;

  loadIconItems() {
    _iconItems = _repo.getIconListItems();
  }

  loadIntItems() {
    _intItems = _repo.getMockData();
  }

  loadDataUsageList() {
    _iconUsageItems = _repo.getDataUsageList();
  }

  loadDataSettingsList() {
    _iconSettingsItems = _repo.getDataSettingsList();
  }
}
