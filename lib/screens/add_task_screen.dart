import 'package:flutter/material.dart';
import 'package:state_management/models/task.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    String newTaskTitle;

    return Container(
      color: Color(0xff50623A),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.lightGreen[200],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.green,
                fontWeight: FontWeight.bold
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){

                newTaskTitle = newText;
              },

            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),

              ),
              color: Colors.lightGreen[600],
              onPressed: (){

                Provider.of<TaskData>(context , listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              )
          ],
        ),
      ),
    );
  }
}
