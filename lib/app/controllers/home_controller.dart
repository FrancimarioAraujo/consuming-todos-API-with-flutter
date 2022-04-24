import 'package:flutter/material.dart';
import 'package:todos_list/app/models/todo.dart';
import 'package:todos_list/app/repositories/todos_repository.dart';

class HomeController {
  TodosRepository todosRepository = TodosRepository();
  final state = ValueNotifier<HomeState>(HomeState.start);
  List<Todo> todos = [];
  Future start() async {
    state.value = HomeState.loading;
    try {
      todos = await todosRepository.getTodos();
      state.value = HomeState.success;
    } catch (error) {
      state.value = HomeState.error;
    }
  }
}

enum HomeState { start, loading, error, success }
