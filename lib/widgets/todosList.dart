import 'package:flutter/widgets.dart';

import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/widgets/todoItem.dart';
import 'package:todo_app/model/todo.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;
  final Function handleTodoChange;
  final Function handleTodoDelete;
  const TodoList(
      {super.key,
      required this.todos,
      required this.handleTodoChange,
      required this.handleTodoDelete});

  // final _todos = Todo.todosList();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50, bottom: 20, left: 5),
            child: const Text(
              'All todos',
              style: TextStyle(
                color: textColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          for (Todo todo in todos)
            TodoItem(
              todo: todo,
              onTodoChanged: handleTodoChange,
              onTodoDeleted: handleTodoDelete,
            ),
        ],
      ),
    );
  }
}
