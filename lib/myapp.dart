import 'package:flutter/material.dart';
import 'package:mixeditems/providers/provider.dart';
import 'package:mixeditems/widgets/home.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (BuildContext context) => CustomProvider()),
        ],
        child: Home(),
      ),
    );
  }
}
