import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:todo/ui/smartWidgets/todoItem_viewmodel.dart';

class TodoItem extends StatelessWidget {
  String title;
  bool status;

  TodoItem({this.title, this.status});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  // letterSpacing: 1,
                ),
              ),
            ),
            Text(
              status ? 'Completed' : 'Not Completed',
            ),
          ],
        ),
      ),
    );
  }
}
