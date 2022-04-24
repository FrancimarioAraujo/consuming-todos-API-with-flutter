import 'package:flutter/material.dart';
import 'package:todos_list/app/components/error_loading_listview.dart';
import 'package:todos_list/app/components/listview_todos.dart';
import 'package:todos_list/app/components/loading_listview.dart';
import 'package:todos_list/app/controllers/home_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomeController homeController = HomeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    homeController.start();
  }

  stateManager(HomeState homeState) {
    switch (homeState) {
      case HomeState.start:
        return Container();
      case HomeState.loading:
        return const LoadingListView();
      case HomeState.error:
        return ErrorLoadingListView(homeController: homeController);
      case HomeState.success:
        return ListViewTodos(
          homeController: homeController,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Lista de Tarefas"),
        actions: [
          IconButton(
            onPressed: () {
              homeController.start();
            },
            icon: const Icon(
              Icons.replay_outlined,
            ),
          )
        ],
      ),
      body: AnimatedBuilder(
        animation: homeController.state,
        builder: (context, child) {
          return stateManager(homeController.state.value);
        },
      ),
    );
  }
}
