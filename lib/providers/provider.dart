import 'package:flutter/material.dart';
import 'package:mixeditems/models/iconitem.dart';
import 'package:mixeditems/models/listwidget.dart';
import 'package:mixeditems/repository/repo.dart';

class CustomProvider extends ChangeNotifier {
  Repo _data = Repo();
  List<WidgetItem> _homeWidgets = [];
  List<IconItem> _iconItems = [];
  List<int> _intItems = [];
  List<WidgetItem> _iconDetailWidgets = [];

  List<WidgetItem> get homeWidgets => _homeWidgets;

  List<IconItem> get iconItems => _iconItems;

  List<int> get intItems => _intItems;

  List<WidgetItem> get iconDetailWidgets =>_iconDetailWidgets;


  loadHomeWidgets() {
    _homeWidgets = _data.getHomeWidgets();
  }

  loadIconItems() {
    _iconItems = _data.getIconListItems();
  }

  loadIntItems() {
    _intItems = _data.getMockData();
  }

  loadIconDetailWidgets(IconItem iconItem){
    _iconDetailWidgets = _data.getIconDetailWidgets(iconItem);
  }
}
