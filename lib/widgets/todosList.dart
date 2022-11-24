import 'package:flutter/widgets.dart';

import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/widgets/todoItem.dart';
import 'package:todo_app/model/todo.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final _todos = Todo.todosList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50, bottom: 20),
            child: const Text(
              'All todos',
              style: TextStyle(
                color: textColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          for (Todo todo in _todos) TodoItem(todo: todo),
        ],
      ),
    );
  }
}
