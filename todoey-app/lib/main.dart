import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import "./screens/task_screen.dart";
import './models/task_data.dart';
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp( 
        home: TasksScreen(),
      ),
    );
  }
}