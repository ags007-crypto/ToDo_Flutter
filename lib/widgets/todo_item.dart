import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/colors.dart';

import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo toDo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem(
      {Key? key,
      required this.toDo,
      required this.onToDoChanged,
      required this.onDeleteItem})
      : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 15),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          onTap: () {
            onToDoChanged(toDo);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          tileColor: Colors.white,
          leading: Icon(
            toDo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: tdGreen,
          ),
          title: Text(
            toDo.todoText!,
            style: TextStyle(
                color: tdBlack,
                fontSize: 16,
                decoration: toDo.isDone ? TextDecoration.lineThrough : null),
          ),
          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: tdRed, borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              icon: Icon(Icons.delete),
              color: Colors.white,
              iconSize: 18,
              onPressed: () {
                onDeleteItem(toDo.id);
              },
            ),
          ),
        ));
  }
}
