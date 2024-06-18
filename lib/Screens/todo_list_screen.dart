import 'package:flutter/material.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: _buildItemList(),
    );
  }

  ListView _buildItemList() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          child: ListTile(
            title: const Text("Title Here"),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Description"),
                Text("Date"),
              ],
            ),
            trailing: _buildIconButton(),
          ),
        );
      },
    );
  }

  Widget _buildIconButton() {
    return CircleAvatar(
      child: Icon(_getIcon(true)),
    );
  }

  IconData _getIcon(bool isDone) {
    return isDone ? Icons.done : Icons.close;
  }
}
