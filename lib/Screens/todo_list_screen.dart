import 'package:flutter/material.dart';
import 'package:todo_app/Screens/add_todo_screen.dart';
import 'package:todo_app/entities/todo.dart';
import 'package:todo_app/widgets/todo_items.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<Todo> _todoList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: TodoItems(
        todo: Todo(
          "Title",
          "description",
          DateTime.now(),
        ),
        onIconButtonPress: () {},
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _onTapAddTodo,
        label: const Text("ADD"),
        tooltip: "Add New Task",
        icon: const Icon(Icons.add),
      ),
    );
  }

  void _onTapAddTodo() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AddTodoScreen(),
        ));
  }
}
