import 'package:flutter/material.dart';
import 'package:mixeditems/models/iconitem.dart';
import 'package:mixeditems/models/listitem.dart';
import 'package:mixeditems/repository/repo.dart';

class CustomProvider extends ChangeNotifier {
  Repo _data = Repo();
  List<ListItem> _listItems = [];
  List<IconItem> _iconItems = [];
  List<int> _intItems = [];

  List<ListItem> get listItems => _listItems;

  List<IconItem> get iconItems => _iconItems;

  List<int> get intItems => _intItems;

  loadListItems() {
    _listItems = _data.getListItems();
  }

  loadIconItems() {
    _iconItems = _data.getIconListItems();
  }

  loadIntItems() {
    _intItems = _data.getMockData();
  }
}
