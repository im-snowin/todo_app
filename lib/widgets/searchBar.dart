import 'package:flutter/material.dart';

import 'package:todo_app/constants/colors.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController searchController;
  final Function searchTodo;

  const SearchBar(
      {super.key, required this.searchController, required this.searchTodo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: searchController,
        onChanged: (value) => searchTodo(searchController.text),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: textGray,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: 'Search your todos',
          hintStyle: TextStyle(color: textGray),
        ),
      ),
    );
  }
}
