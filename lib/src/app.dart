import 'package:flutter/material.dart';
import 'package:wechannelmm/src/route.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wechannelmm',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: appRoutes,
      initialRoute: '/',
    );
  }
}
