import 'package:flutter/material.dart';
import 'package:todo_app/entities/todo.dart';

class TodoItems extends StatelessWidget {
  const TodoItems({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          elevation: 3,
          child: ListTile(
            title: Text(
              todo.title,
              style: TextStyle(
                decoration: _getTextDecoration(todo.isDone),
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(todo.description),
                Text(todo.date.toString()),
              ],
            ),
            trailing: _buildIconButton(todo.isDone),
          ),
        );
      },
    );
  }

  Widget _buildIconButton(bool isDone) {
    return CircleAvatar(
      child: Icon(_getIcon(true)),
    );
  }

  IconData _getIcon(bool isDone) {
    return isDone ? Icons.done : Icons.close;
  }

  TextDecoration? _getTextDecoration(bool isDone) {
    return isDone ? TextDecoration.lineThrough : null;
  }
}
