import 'package:flutter/material.dart';
import 'package:todos_list/app/controllers/home_controller.dart';

class ErrorLoadingListView extends StatefulWidget {
  HomeController homeController;
  ErrorLoadingListView({required this.homeController});
  @override
  State<ErrorLoadingListView> createState() => _ErrorLoadingListViewState();
}

class _ErrorLoadingListViewState extends State<ErrorLoadingListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Erro ao carregar a lista de tarefas",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                widget.homeController.start();
              },
              child: const Text("Tentar novamente")),
        ],
      ),
    );
  }
}
