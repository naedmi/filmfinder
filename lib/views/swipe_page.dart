import 'package:flutter/material.dart';

import 'common/navigation_widget_main_details.dart';

class SwipePage extends StatelessWidget {
  const SwipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SimpleBottomBarScaffold(
      body: Center(child: Text('toDo')),
    );
  }
}
