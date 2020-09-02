import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';
import 'package:todo/datamodels/todo_item_model.dart';

@lazySingleton
class TodoServices with ReactiveServiceMixin {
  RxValue<List<TodoItemModel>> _todoItems =
      RxValue<List<TodoItemModel>>(initial: [
    TodoItemModel(id: 1, title: 'Hello1', status: false),
    TodoItemModel(id: 2, title: 'Hello2', status: true),
    TodoItemModel(id: 3, title: 'Hello3', status: false),
  ]);

  TodoServices() {
    listenToReactiveValues([_todoItems]);
  }
  List<TodoItemModel> get todos => [..._todoItems.value];

  List<TodoItemModel> get completedTodos =>
      _todoItems.value.where((element) => element.status == true).toList();

  List<TodoItemModel> get remainingTodos =>
      _todoItems.value.where((element) => element.status == false).toList();

  void updateStatus(int id) {
    _todoItems.value.forEach((element) {
      if (element.id == id) {
        element.status = !element.status;
      }
    });
  }

  void addTodos(String title) {
    print('adafa');
    _todoItems.value.add(TodoItemModel(
        id: _todoItems.value.length + 1, title: title, status: false));
  }
}
