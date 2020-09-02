import 'package:stacked/stacked.dart';
import 'package:todo/app/locator.dart';
import 'package:todo/services/todoServices.dart';

class AddTodoViewModel extends ReactiveViewModel {
  String _title;
  String get title => _title;
  void updateString(String value) {
    _title = value;
    print(_title);
    notifyListeners();
  }

  final _todoServices = locator<TodoServices>();
  void addTodo(String title) {
    print(title);
    _todoServices.addTodos(title);
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_todoServices];
}
