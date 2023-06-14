import 'package:filmfinder/controllers/list/list_controller.dart'
    as list_controller;
import 'package:filmfinder/controllers/movie_details/movie_details_controller.dart';
import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/providers.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

class BottomNavigationWidget extends ConsumerWidget {
  final ScrollController? controller;
  final String movieId;

  const BottomNavigationWidget({
    Key? key,
    required this.movieId,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list_controller.ListController listController =
        ref.watch(providers.listControllerProvider);
    final MovieDetailsController movieDetailsController =
        ref.watch(providers.movieDetailsProvider(int.parse(movieId)));

    return BottomAppBar(
        height: mainActionButtonHeight / 2 + padding,
        shape: const CircularNotchedRectangle(),
        notchMargin: paddingSmall,
        elevation: elevation,
        surfaceTintColor: Theme.of(context).canvasColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Remix.arrow_left_line,
              ),
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                } else {
                  //was das? keinen unterschied zu ein oder auskommentiert?
                  controller?.animateTo(0,
                      duration: const Duration(milliseconds: animationDuration),
                      curve: Curves.easeInOut);
                }
              },
            ),
            const MiddleButton(),
            IconButton(
              onPressed: () {
                listController.movieList.movies.any(
                        (MovieResult movie) => movie.id == int.parse(movieId))
                    ? listController.removeMovie(int.parse(movieId))
                    : listController.addMovieFromId(movieId);
              },
              icon: listController.movieList.movies.any(
                      (MovieResult movie) => movie.id == int.parse(movieId))
                  ? const Icon(
                      Remix.check_line,
                    )
                  : const Icon(
                      Remix.add_circle_line,
                    ),
            ),
          ],
        ));
  }
}

class MiddleButton extends StatelessWidget {
  const MiddleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSwipe = GoRouter.of(context).location == routeSwipe;
    if (isSwipe) {
      return SizedBox(
        width: mainActionButtonWidth * 2,
        child: Center(
          child: IconButton(
            icon: const Icon(Remix.filter_2_line),
            onPressed: () {
              //toDo open filter
            },
          ),
        ),
      );
    } else {
      return const SizedBox(width: mainActionButtonWidth * 2);
    }
  }
}

class SimpleBottomBarScaffold extends StatelessWidget {
  final Widget body;
  final AppBar? appBar;
  final ScrollController? controller;
  final bool showMiddleButton;
  final bool hideBottomBar;
  final String movieId;

  const SimpleBottomBarScaffold(
      {super.key,
      required this.body,
      this.appBar,
      this.controller,
      this.showMiddleButton = true,
      this.hideBottomBar = false,
      required this.movieId});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (context.canPop()) {
          context.pop();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
          appBar: appBar,
          extendBody: true,
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: hideBottomBar
              ? null
              : BottomNavigationWidget(
                  controller: controller,
                  movieId: movieId,
                ),
          body: body),
    );
  }
}
