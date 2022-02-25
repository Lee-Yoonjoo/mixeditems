import 'package:flutter/material.dart';
import 'package:mixeditems/models/icon_item.dart';
import 'package:mixeditems/models/listwidget.dart';
import 'package:mixeditems/repository/repo.dart';

class IconListProvider extends ChangeNotifier {
  Repo _repo = Repo();
  List<WidgetItem> _homeWidgets = [];
  List<IconItem> _iconItems = [];
  List<int> _intItems = [];
  List<WidgetItem> _iconDetailWidgets = [];

  List<WidgetItem> get homeWidgets => _homeWidgets;

  List<IconItem> get iconItems => _iconItems;

  List<int> get intItems => _intItems;

  List<WidgetItem> get iconDetailWidgets =>_iconDetailWidgets;


  loadHomeWidgets() {
    _homeWidgets = _repo.getHomeWidgets();
  }

  loadIconItems() {
    _iconItems = _repo.getIconListItems();
  }

  loadIntItems() {
    _intItems = _repo.getMockData();
  }

  loadIconDetailWidgets(IconItem iconItem){
    _iconDetailWidgets = _repo.getIconDetailWidgets(iconItem);
  }
}
