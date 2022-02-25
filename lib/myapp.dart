import 'package:flutter/material.dart';
import 'package:mixeditems/providers/icon_list_provider.dart';
import 'package:mixeditems/screens/home_widget.dart';
import 'package:mixeditems/screens/icon_detail_widget.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
          create: (BuildContext context) => IconListProvider()),
    ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeWidget(),
      ),
    );
  }
}
