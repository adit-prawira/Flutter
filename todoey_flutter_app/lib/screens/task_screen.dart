import 'package:flutter/material.dart';
import '../widgets/tasks_list.dart';
import 'add_task_screen.dart';
import "package:provider/provider.dart";
import "../models/task_data.dart";

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1c2436),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF171E2E),
        child: Icon(Icons.add, color: Color(0xff47edb3)),
        onPressed: () {
          //input new task
          showModalBottomSheet(
            context: (context),
            builder: (context) => AddTasksScreen(),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 60,
              left: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Color(0xFF0A0E21),
                  ),
                  backgroundColor: Color(0xff47edb3),
                  radius: 30,
                ),
                SizedBox(height: 30),
                Text(
                  "Todoey",
                  style: TextStyle(
                    color: Color(0xff47edb3),
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${Provider.of<TaskData>(context).taskCount} Tasks",
                  style: TextStyle(
                    color: Color(0xff47edb3),
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xff29303f),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
