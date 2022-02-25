import 'package:flutter/material.dart';
import 'package:mixeditems/models/icon_item.dart';
import 'package:mixeditems/sections/home/expandable_list_section.dart';
import 'package:mixeditems/sections/home/icon_list_section.dart';
import 'package:mixeditems/sections/home/info_section.dart';
import 'package:mixeditems/sections/home/question_section.dart';
import 'package:mixeditems/sections/home/switch_section.dart';
import 'package:mixeditems/sections/icon_detail/head_section.dart';
import 'package:mixeditems/sections/icon_detail/settings_section.dart';
import 'package:mixeditems/sections/icon_detail/usage_section.dart';
import 'package:mixeditems/sections/icon_detail/version_section.dart';

class WidgetPlaceHolder {

  List<Widget> getHomeWidgets() {
    return [
      const SwitchItem('Latest Location', true),
      const IconListSection('Latest Access' ),
      const ExpandableListSection(title:'See all'),
      const QuestionSection('Welche Apps dürfen den Standort ermitteln?',
          '28 von 90 Apps haben Zugriff auf den Standort'),
      const InfoSection('Location Service',
          "You can allow your phone to use GPS, Wi-Fi networks, and cellular networks to determine your approximate location. Applications that have permission can use this information to provide location-based services, such as checking in for a flight, viewing traffic information, finding nearby restaurants, or tagging your photos with location information.")
    ];
  }
  List<Widget> getIconDetailWidgets(IconItem iconItem){
    return [
      HeadSection(iconItem),
      UsageSection('Usage'),
      SettingsSection('App settings'),
      VersionSection(iconItem)
    ];
  }

}