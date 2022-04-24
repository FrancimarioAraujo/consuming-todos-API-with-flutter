import 'package:flutter_test/flutter_test.dart';
import 'package:todos_list/app/controllers/home_controller.dart';

void main() {
  final controller = HomeController();
  test("Verify if when calls method 'start' the list 'todos' is filled",
      () async {
    await controller.start();
    expect(controller.todos.isNotEmpty, true);
  });
}
