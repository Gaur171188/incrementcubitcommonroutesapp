import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:incrementcubitcommonroutesapp/firstcubit.dart';
import 'package:incrementcubitcommonroutesapp/firstscreen.dart';
import 'package:incrementcubitcommonroutesapp/secondcubit.dart';
import 'package:incrementcubitcommonroutesapp/secondscreen.dart';
import 'package:incrementcubitcommonroutesapp/thirdcubit.dart';
import 'package:incrementcubitcommonroutesapp/thirdscreen.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/first":
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => FirstCubit(),
                  child: FirstScreen(),
                ));
      case "/second":
        Map<String, dynamic> arguments =
            routeSettings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => SecondCubit(),
                child: SecondScreen(title: arguments['title'])));
      case "/third":
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => ThirddCubit(), child: ThirdScreen()));

      default:
        return null;
    }
  }
}
