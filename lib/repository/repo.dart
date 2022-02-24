import 'package:flutter/material.dart';
import 'package:mixeditems/models/iconitem.dart';
import 'package:mixeditems/models/listwidget.dart';
import 'package:mixeditems/widgets/home/expandablelist_section.dart';
import 'package:mixeditems/widgets/home/iconlist_section.dart';
import 'package:mixeditems/widgets/home/information_section.dart';
import 'package:mixeditems/widgets/home/question_section.dart';
import 'package:mixeditems/widgets/home/switch_section.dart';
import 'package:mixeditems/widgets/icondetail/head_section.dart';
import 'package:mixeditems/widgets/icondetail/list_section.dart';

class Repo {
  List<WidgetItem> getHomeWidgets() {
    return [
      SwitchItem('Latest Location', true),
      IconListSection('Latest Access' ),
      ExpandableListSection('See all'),
      QuestionTextSection('Welche Apps dürfen den Standort ermitteln?',
          '28 von 90 Apps haben Zugriff auf den Standort'),
      InfoSection('Location Service',
          "You can allow your phone to use GPS, Wi-Fi networks, and cellular networks to determine your approximate location. Applications that have permission can use this information to provide location-based services, such as checking in for a flight, viewing traffic information, finding nearby restaurants, or tagging your photos with location information.")
    ];
  }

  List<IconItem> getIconListItems() {
    return [
      IconItem('Fit', '5 minutes ago', Icons.fitness_center),
      IconItem('Emergency Information', '8 minutes ago', Icons.warning),
      IconItem('Maps', '8 minutes ago', Icons.pin_drop),
    ];
  }

  List<int> getMockData() {
    return [1, 2, 3, 4, 5];
  }

  List<WidgetItem> getIconDetailWidgets(IconItem iconItem){
    return [
      HeadSection(iconItem),
      ListSection(iconItem, infoList()),
    ];
  }

  Map<String, List<Map<String,String>>> infoList (){
    return {
      'Usage' : [{'Mobile data':'95.65 MB used since Nov 1, 2021'},
        {'Battery':'0% used since last fully charged'},
        {'Storage':'1.11 GB used in Internal storage'},
        {'Memory':'No memory used in last 3 hours'}
      ],
      'App settings':[
        {'Notifications':'Blocked'},
        {'Permissions':'Camera, Contacts, Location, and Physical activity'},
        {'Set as default':'Non set as default'},
      ]
    };
  }


}
