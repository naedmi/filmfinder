import 'package:filmfinder/controllers/providers.dart';
import 'package:filmfinder/controllers/swipe/swipe_controller.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/views/common/error_card_widget.dart';
import 'package:filmfinder/views/common/loading_card_widget.dart';
import 'package:filmfinder/views/common/navigation_widget_main_details.dart';
import 'package:filmfinder/views/swipe/single_swipe_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SwipePage extends ConsumerWidget {
  const SwipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<MovieDetails>> swipeController =
        ref.watch(providers.swipeControllerProvider);
    final SwipeController swipeNotifier =
        ref.read(providers.swipeControllerProvider.notifier);
    return SimpleBottomBarScaffold(
      hideBottomBar:
          MediaQuery.of(context).orientation == Orientation.landscape,
      body: Center(
        child: swipeController.when(
            data: (List<MovieDetails> movies) {
              return PageView(
                onPageChanged: (int index) {
                  swipeNotifier.swipe(index);
                },
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  for (MovieDetails movie in movies)
                    SingleSwipeWidget(
                      movie: movie,
                    ),
                  const LoadingCardWidget(),
                ],
              );
            },
            loading: () => const LoadingCardWidget(),
            error: (Object error, StackTrace? stackTrace) => ErrorCardWidget(
                  error: error,
                  stackTrace: stackTrace,
                )),
      ),
      movieId: ref.watch(providers.movieIdProvider),
    );
  }
}
