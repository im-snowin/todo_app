import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/model/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final onTodoChanged;
  final onTodoDeleted;

  const TodoItem(
      {super.key,
      required this.todo,
      required this.onTodoChanged,
      required this.onTodoDeleted});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15),
      child: ListTile(
          // onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          tileColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              onTodoChanged(todo);
            },
            icon: Icon(
              todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
              color: Colors.blue,
            ),
          ),
          title: Text(
            todo.text,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: IconButton(
            onPressed: () {
              onTodoDeleted(todo.id);
            },
            icon: const Icon(
              Icons.delete,
              color: danger,
            ),
          )),
    );
  }
}
