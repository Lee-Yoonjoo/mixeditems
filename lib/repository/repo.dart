import 'package:flutter/material.dart';
import 'package:mixeditems/widgets/expandablelist.dart';
import 'package:mixeditems/widgets/iconlist_section.dart';
import 'package:mixeditems/widgets/iconlistitem_section.dart';
import 'package:mixeditems/widgets/information_section.dart';
import 'package:mixeditems/widgets/question_section.dart';
import 'package:mixeditems/widgets/switch_section.dart';

import '../models/listitem.dart';
import '../widgets/expendablelistitem_section.dart';

class Repo {
  List<ListItem> getListItems() {
    return [
      SwitchItem('Latest Location', true),
      IconListHead('Latest Access'),
      IconListItem('Fit', '5 minutes ago', Icons.fitness_center),
      IconListItem('Emergency Information', '8 minutes ago', Icons.warning),
      IconListItem('Maps', '8 minutes ago', Icons.pin_drop),
      ExpandableListSection('See all'),
      QuestionTextSection('Welche Apps dürfen den Standort ermitteln?',
          '28 von 90 Apps haben Zugriff auf den Standort'),
      InfoSection('Location Service',
          "You can allow your phone to use GPS, Wi-Fi networks, and cellular networks to determine your approximate location. Applications that have permission can use this information to provide location-based services, such as checking in for a flight, viewing traffic information, finding nearby restaurants, or tagging your photos with location information.")
    ];
  }
}
