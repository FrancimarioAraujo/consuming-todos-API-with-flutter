import 'package:flutter/material.dart';

class LoadingListView extends StatefulWidget {
  const LoadingListView({Key? key}) : super(key: key);

  @override
  State<LoadingListView> createState() => _LoadingListViewState();
}

class _LoadingListViewState extends State<LoadingListView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
