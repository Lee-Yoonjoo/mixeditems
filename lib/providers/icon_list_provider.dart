import 'package:flutter/material.dart';
import 'package:mixeditems/models/icon_item.dart';
import 'package:mixeditems/repository/repo.dart';

class IconListProvider extends ChangeNotifier {
  Repo _repo = Repo();
  List<Widget> _homeWidgets = [];
  List<IconItem> _iconItems = [];
  List<int> _intItems = [];
  List<Widget> _iconDetailWidgets = [];

  List<Widget> get homeWidgets => _homeWidgets;

  List<IconItem> get iconItems => _iconItems;

  List<int> get intItems => _intItems;

  List<Widget> get iconDetailWidgets =>_iconDetailWidgets;


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
