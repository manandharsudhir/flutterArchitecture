import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:todo/ui/views/addTodo/addTodo_viewmodel.dart';

class AddTodoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    return ViewModelBuilder<AddTodoViewModel>.reactive(
        builder: (context, model, child) => Container(
              height: MediaQuery.of(context).viewInsets.bottom + 200,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Title'),
                      controller: titleController,
                      onSubmitted: (value) {
                        model.updateString(value);
                      },
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      model.addTodo(titleController.text);
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Done',
                    ),
                  ),
                ],
              ),
            ),
        viewModelBuilder: () => AddTodoViewModel());
  }
}
