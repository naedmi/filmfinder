import 'package:filmfinder/views/common/navigation_widget_main_details.dart';
import 'package:filmfinder/views/swipe/single_swipe_widget.dart';
import 'package:flutter/material.dart';

class SwipePage extends StatelessWidget {
  const SwipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleBottomBarScaffold(
        body: Center(
            child: PageView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: const <Widget>[
        SingleSwipeWidget(
          videoId: 'EiKXJ-ObtGk',
        ),
        SingleSwipeWidget(
          videoId: 'eoOaKN4qCKw',
        ),
        SingleSwipeWidget(
          videoId: 'qEVUtrk8_B4',
        ),
      ],
    )));
  }
}
