import 'package:stacked/stacked.dart';
import 'package:todo/app/locator.dart';
import 'package:todo/datamodels/todo_item_model.dart';
import 'package:todo/services/todoServices.dart';

class CompletedTodoViewModel extends ReactiveViewModel {
  final _todoServices = locator<TodoServices>();
  List<TodoItemModel> get todoList => _todoServices.completedTodos;
  void updateStatus(int id) {
    print('hello');
    _todoServices.updateStatus(id);
    notifyListeners();
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_todoServices];
}
