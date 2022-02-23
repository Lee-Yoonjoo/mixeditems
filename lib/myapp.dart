import 'package:flutter/material.dart';
import 'package:mixeditems/providers/provider.dart';
import 'package:mixeditems/screens/home.dart';
import 'package:mixeditems/screens/icondetail.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
          create: (BuildContext context) => CustomProvider()),
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
