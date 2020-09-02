import 'package:stacked/stacked.dart';
import 'package:todo/app/locator.dart';
import 'package:todo/datamodels/todo_item_model.dart';

class TodoItemViewModel extends BaseViewModel {
  final _todoServices = locator<TodoItemModel>();

  String get title => _todoServices.title;
  bool get status => _todoServices.status;

  void updateStatus() {
    _todoServices.updateStatus();
    notifyListeners();
  }
}
