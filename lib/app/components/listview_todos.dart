import 'package:flutter/material.dart';
import 'package:todos_list/app/controllers/home_controller.dart';

class ListViewTodos extends StatefulWidget {
  HomeController homeController;
  ListViewTodos({Key? key, required this.homeController}) : super(key: key);

  @override
  State<ListViewTodos> createState() => _ListViewTodosState();
}

class _ListViewTodosState extends State<ListViewTodos> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.homeController.todos.length,
      itemBuilder: (context, index) {
        var todo = widget.homeController.todos[index];
        return ListTile(
          title: Text(todo.title.toString()),
          trailing: Checkbox(
            value: todo.completed,
            onChanged: (_) {},
          ),
        );
      },
    );
  }
}
