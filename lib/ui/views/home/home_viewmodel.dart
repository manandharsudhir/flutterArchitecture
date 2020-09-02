import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:todo/app/locator.dart';
import 'package:todo/app/router.gr.dart';
import 'package:todo/services/todoServices.dart';
import 'package:todo/ui/views/addTodo/addTodos_view.dart';
import 'package:todo/ui/views/allTodo/allTodo_view.dart';
import 'package:todo/ui/views/completedTodo/completedTodo_view.dart';
import 'package:todo/ui/views/remainingTodo/remainingTodo_view.dart';

class HomeViewModel extends ReactiveViewModel {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  final _todoServices = locator<TodoServices>();
  void onTap(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  List<Widget> _pages = [
    AllTodoView(),
    CompletedTodoView(),
    RemainingTodoView(),
  ];

  List get pages => _pages;

  Widget get addTodoPage => AddTodoView();

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_todoServices];
}
