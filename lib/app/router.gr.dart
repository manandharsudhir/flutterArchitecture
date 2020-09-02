// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/allTodo/allTodo_view.dart';
import '../ui/views/home/home_view.dart';

class Routes {
  static const String HomeViewRouter = '/';
  static const String AllTodoViewRouter = '/all-todo-view';
  static const all = <String>{
    HomeViewRouter,
    AllTodoViewRouter,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.HomeViewRouter, page: HomeView),
    RouteDef(Routes.AllTodoViewRouter, page: AllTodoView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    AllTodoView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AllTodoView(),
        settings: data,
      );
    },
  };
}
