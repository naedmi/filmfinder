import 'package:cached_network_image/cached_network_image.dart';
import 'package:filmfinder/controllers/common/filter_controller.dart';
import 'package:filmfinder/controllers/list/list_controller.dart'
    as list_controller;
import 'package:filmfinder/models/common/filter.dart';
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

class MiddleButton extends ConsumerWidget {
  const MiddleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FilterProviderController filterProviderController =
        ref.read(providers.filterProviderControllerProvider.notifier);
    final FilterProviderModel filterProviderModel =
        ref.watch(providers.filterProviderControllerProvider);
    final bool isSwipe = GoRouter.of(context).location == routeSwipe;
    if (isSwipe) {
      return SizedBox(
        width: mainActionButtonWidth * 2,
        child: Center(
          child: IconButton(
            icon: const Icon(Remix.filter_2_line),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(padding),
                    itemCount: availableProviders.keys.toList().length,
                    itemBuilder: (BuildContext context, int index) => ListTile(
                      horizontalTitleGap: padding,
                      trailing: filterProviderModel.providers.keys
                              .contains(availableProviders.keys.toList()[index])
                          ? const Icon(Remix.check_line)
                          : null,
                      title: LogoName(
                        logo: availableProviders.values.toList()[index],
                        provName: availableProviders.keys.toList()[index],
                      ),
                      onTap: () {
                        final String clickedProviderKey =
                            availableProviders.keys.toList()[index];
                        if (filterProviderModel.providers.keys
                            .contains(clickedProviderKey)) {
                          filterProviderController
                              .removeProvider(clickedProviderKey);
                        } else {
                          filterProviderController.addProvider(
                              clickedProviderKey,
                              availableProviders[clickedProviderKey]!);
                        }
                      },
                    ),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  );
                },
              );
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

class LogoName extends StatelessWidget {
  final String logo;
  final String provName;

  const LogoName({super.key, required this.logo, required this.provName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CachedNetworkImage(
          imageUrl: logo,
          placeholder: (BuildContext context, String url) =>
              const Center(child: CircularProgressIndicator()),
          errorWidget: (BuildContext context, String url, _) =>
              const Icon(Remix.error_warning_line),
          width: 30,
          height: 30,
        ),
        const SizedBox(
          width: padding,
        ),
        Text(provName),
      ],
    );
  }
}
