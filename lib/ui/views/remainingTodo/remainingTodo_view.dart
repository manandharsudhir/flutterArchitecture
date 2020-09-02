import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:todo/ui/smartWidgets/todoItem.dart';

import 'remainingTodo_viewmodel.dart';

class RemainingTodoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RemainingTodoViewModel>.reactive(
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
        viewModelBuilder: () => RemainingTodoViewModel());
  }
}
