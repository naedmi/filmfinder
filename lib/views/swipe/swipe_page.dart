import 'package:filmfinder/controllers/swipe/swipe_controller.dart';
import 'package:filmfinder/controllers/swipe/swipe_providers.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget_main_details.dart';
import 'package:filmfinder/views/swipe/single_swipe_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remixicon/remixicon.dart';

class SwipePage extends ConsumerWidget {
  const SwipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<AsyncValue<MovieDetails>>> swipeController =
        ref.watch(swipeControllerProvider);
    final SwipeController swipeNotifier =
        ref.read(swipeControllerProvider.notifier);
    return SimpleBottomBarScaffold(
      body: Center(
        child:
            swipeController.when(data: (List<AsyncValue<MovieDetails>> movies) {
          return PageView(
            onPageChanged: (int index) {
              swipeNotifier.swipe(index);
            },
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              for (AsyncValue<MovieDetails> movie in movies)
                movie.when(
                    data: (MovieDetails details) => SingleSwipeWidget(
                          movie: details,
                        ),
                    error: (Object error, StackTrace? stackTrace) {
                      return Card(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(padding),
                            child: Icon(Remix.signal_wifi_error_line,
                                size: paddingBig),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(padding),
                            child: Text(error.toString()),
                          ),
                        ],
                      ));
                    },
                    loading: () {
                      return const Center(
                        child: Card(
                            child: Padding(
                          padding: EdgeInsets.all(padding),
                          child: CircularProgressIndicator(),
                        )),
                      );
                    }),
            ],
          );
        }, loading: () {
          return const Center(
            child: Card(
                child: Padding(
              padding: EdgeInsets.all(padding),
              child: CircularProgressIndicator(),
            )),
          );
        }, error: (Object error, StackTrace? stackTrace) {
          return Card(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(padding),
                child: Icon(Remix.error_warning_line, size: paddingBig),
              ),
              Padding(
                padding: const EdgeInsets.all(padding),
                child: Text(error.toString()),
              ),
            ],
          ));
        }),
      ),
    );
  }
}
