import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todos_list/app/models/todo.dart';

class TodosRepository {
  Future<List<Todo>> getTodos() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
    List<dynamic> todosMap = json.decode(response.body);
    return todosMap.map((todoMap) => Todo.fromJson(todoMap)).toList();
  }
}
