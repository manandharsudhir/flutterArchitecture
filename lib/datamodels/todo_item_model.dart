import 'package:injectable/injectable.dart';

@lazySingleton
class TodoItemModel {
  final int id;
  final String title;
  bool status;
  TodoItemModel({
    this.id,
    this.title,
    this.status,
  });

  void updateStatus() {
    status = !status;
  }
}
