import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:todo/ui/smartWidgets/todoItem.dart';
import 'package:todo/ui/views/allTodo/allTodo_viewmodel.dart';

class AllTodoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllTodoViewModel>.reactive(
        builder: (context, model, child) => ListView.builder(
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  model.updateStatus(model.todoList[index].id);
                },
                child: TodoItem(
                  title: model.todoList[index].title,
                  status: model.todoList[index].status,
                ),
              ),
              itemCount: model.todoList.length,
            ),
        viewModelBuilder: () => AllTodoViewModel());
  }
}
