import 'package:filmfinder/view/common/navigation_widget.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainBottomBarScaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: const Center(
        child: Text('List'),
      ),
    );
  }
}
