import 'package:flutter/material.dart';
import 'package:incrementcubitcommonroutesapp/firstscreen.dart';
import 'package:incrementcubitcommonroutesapp/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/first",
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
