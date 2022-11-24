class Todo {
  int? id;
  String text;
  bool isDone;

  Todo({required this.id, required this.text, this.isDone = false});

  static List<Todo> todosList() {
    return [
      Todo(id: 2, text: 'Home work', isDone: true),
      Todo(id: 1, text: 'clean hall'),
      Todo(id: 3, text: 'Buy milk', isDone: true),
    ];
  }
}
