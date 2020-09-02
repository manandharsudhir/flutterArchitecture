import 'package:stacked/stacked.dart';
import 'package:todo/app/locator.dart';
import 'package:todo/datamodels/todo_item_model.dart';
import 'package:todo/services/todoServices.dart';

class RemainingTodoViewModel extends ReactiveViewModel {
  final _todoServices = locator<TodoServices>();
  List<TodoItemModel> get todoList => _todoServices.remainingTodos;
  void updateStatus(int id) {
    _todoServices.updateStatus(id);
    notifyListeners();
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_todoServices];
}
