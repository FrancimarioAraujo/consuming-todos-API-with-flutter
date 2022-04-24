import 'package:flutter_test/flutter_test.dart';
import 'package:todos_list/app/models/todo.dart';
import 'package:todos_list/app/repositories/todos_repository.dart';

Future<void> main() async {
  TodosRepository todosRepository = TodosRepository();
  test("expect a list of todos", () async {
    expect(await todosRepository.getTodos(), isA<List<Todo>>());
  });
}
