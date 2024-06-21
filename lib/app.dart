import 'package:flutter/material.dart';

import 'package:todo_app/Screens/todo_list_screen.dart';
import 'package:todo_app/config/theme.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      home: const TodoListScreen(),
    );
  }
}
