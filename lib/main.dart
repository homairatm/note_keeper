import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/task_data.dart';
import 'package:state_management/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskData()),
      ],
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
