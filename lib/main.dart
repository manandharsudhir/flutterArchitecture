import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:todo/app/locator.dart';
import 'package:todo/app/router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.HomeViewRouter,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
