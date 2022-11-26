import 'package:flutter/material.dart';

import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/widgets/BottomStack.dart';
import 'package:todo_app/widgets/searchBar.dart';
import 'package:todo_app/widgets/todosList.dart';

class Home extends StatefulWidget {
  final String title;
  const Home({super.key, required this.title});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _todos = Todo.todosList();
  final _todoController = TextEditingController();

  void _addTodo(String text) {
    setState(() {
      _todos.add(Todo(id: DateTime.now().microsecondsSinceEpoch, text: text));
    });
    _todoController.clear();
  }

  void _handleTodoChange(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _handleTodoDelete(int id) {
    setState(() {
      _todos.removeWhere((todo) => todo.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: primary,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                const SearchBar(),
                TodoList(
                    todos: _todos,
                    handleTodoChange: _handleTodoChange,
                    handleTodoDelete: _handleTodoDelete),
              ],
            ),
          ),
          BottomStack(addTodo: _addTodo, todoController: _todoController)
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        backgroundColor: primary,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                  color: textColor, fontWeight: FontWeight.bold, fontSize: 28),
            ),
            SizedBox(
              width: 40,
              height: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                    'https://images.unsplash.com/photo-1628157588553-5eeea00af15c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
              ),
            ),
          ],
        ));
  }
}
