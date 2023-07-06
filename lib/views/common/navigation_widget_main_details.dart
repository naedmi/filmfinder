import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/controllers/common/discover_controller.dart';
import 'package:filmfinder/controllers/common/filter_controller.dart';
import 'package:filmfinder/controllers/list/list_controller.dart'
    as list_controller;
import 'package:filmfinder/controllers/providers.dart';
import 'package:filmfinder/models/common/filter.dart';
import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/models/list/movie_list.dart';
import 'package:filmfinder/models/settings/settings.dart';
import 'package:filmfinder/models/watch_provider/movie_provider_params.dart';
import 'package:filmfinder/models/watch_provider/movie_provider_response.dart';
import 'package:filmfinder/services/watch_provider/watch_provider_api_service.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
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
        ref.read(providers.listControllerProvider.notifier);
    final MovieList movieList = ref.watch(providers.listControllerProvider);

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
                movieList.movies.any((MovieResult movie) =>
                        movie.id == int.tryParse(movieId))
                    ? listController.removeMovie(int.parse(movieId))
                    : listController.addMovieById(movieId);
              },
              icon: movieList.movies.any(
                      (MovieResult movie) => movie.id == int.tryParse(movieId))
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
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(padding),
                    itemCount: filterOptions.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        horizontalTitleGap: padding,
                        title: IconName(
                          logo: filterOptions[
                              filterOptions.keys.toList()[index]]!,
                          provName: filterOptions.keys.toList()[index].tr(),
                        ),
                        onTap: () {
                          if (index == 0) {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return const ProviderConsumer();
                              },
                            );
                          } else if (index == 1) {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return const GenreConsumer();
                              },
                            );
                          }
                        },
                      );
                    },
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
          imageUrl: 'https://image.tmdb.org/t/p/w500$logo',
          placeholder: (BuildContext context, String url) =>
              const Center(child: CircularProgressIndicator()),
          errorWidget: (BuildContext context, String url, _) =>
              const Icon(Remix.error_warning_line),
          width: providerLogoSizeSmall,
          height: providerLogoSizeSmall,
        ),
        const SizedBox(
          width: padding,
        ),
        Flexible(child: Text(provName)),
      ],
    );
  }
}

class IconName extends StatelessWidget {
  final IconData logo;
  final String provName;

  const IconName({super.key, required this.logo, required this.provName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(logo),
        const SizedBox(
          width: padding,
        ),
        Flexible(child: Text(provName).tr()),
      ],
    );
  }
}

class ProviderConsumer extends ConsumerWidget {
  const ProviderConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FilterProviderController filterProviderController =
        ref.read(providers.filterProviderControllerProvider.notifier);
    final FilterProviderModel filterProviderModel =
        ref.watch(providers.filterProviderControllerProvider);
    final DiscoverController discoverController =
        ref.read(providers.discoverControllerProvider.notifier);
    final SettingsDarkModeModel darkModeModel =
        ref.watch(providers.settingsControllerProvider);

    final AsyncValue<MovieProviderResponse> movieProviders =
        ref.watch(watchProviderApiService(MovieProviderParams(
      language: Localizations.localeOf(context).languageCode.toString(),
      watchRegion: Localizations.localeOf(context).countryCode.toString(),
    )));
    List<MovieWatchProvider> movieProviderList = <MovieWatchProvider>[];
    movieProviders.whenData(
        (MovieProviderResponse value) => movieProviderList = value.results);

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(paddingSmall),
          child: SvgPicture.asset(
            darkModeModel.darkMode
                ? justWatchImagePathLight
                : justWatchImagePathDark,
            height: justWatchImageHeight,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(paddingSmall),
          child: Row(
            children: <Widget>[
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    if (filterProviderModel.providers.length ==
                        movieProviderList.length) {
                      filterProviderController.clearProviders();
                    } else {
                      filterProviderController
                          .selectAllProviders(movieProviderList);
                    }
                  },
                  child: movieProviderList.length ==
                          filterProviderModel.providers.length
                      ? const Text('filter.deselectAll').tr()
                      : const Text('filter.selectAll').tr(),
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    discoverController.refreshProviders();
                    savedToast();
                  },
                  child: const Text('filter.apply').tr(),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.all(padding),
            itemCount: movieProviderList.length,
            itemBuilder: (BuildContext context, int index) {
              final int clickedProviderKey =
                  movieProviderList[index].providerId;

              return ListTile(
                horizontalTitleGap: padding,
                trailing: filterProviderModel.providers.keys
                        .contains(clickedProviderKey)
                    ? const Icon(Remix.check_line)
                    : null,
                title: LogoName(
                  logo: movieProviderList[index].logoPath,
                  provName: movieProviderList[index].providerName,
                ),
                onTap: () {
                  if (filterProviderModel.providers.keys
                      .contains(clickedProviderKey)) {
                    filterProviderController.removeProvider(clickedProviderKey);
                  } else {
                    filterProviderController.addProvider(
                      clickedProviderKey,
                      (
                        movieProviderList[index].providerName,
                        movieProviderList[index].logoPath,
                      ),
                    );
                  }
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
      ],
    );
  }
}

class GenreConsumer extends ConsumerWidget {
  const GenreConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FilterGenreController filterGenreController =
        ref.read(providers.filterGenreControllerProvider.notifier);
    final FilterGenreModel filterGenreModel =
        ref.watch(providers.filterGenreControllerProvider);
    final DiscoverController discoverController =
        ref.read(providers.discoverControllerProvider.notifier);

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(paddingSmall),
          child: Row(
            children: <Widget>[
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    if (filterGenreModel.genres.length == genreMap.length) {
                      filterGenreController.clearGenres();
                    } else {
                      filterGenreController.selectAllGenres();
                    }
                  },
                  child: filterGenreModel.genres.length == genreMap.length
                      ? const Text('filter.deselectAll').tr()
                      : const Text('filter.selectAll').tr(),
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    discoverController.refreshGenres();
                    savedToast();
                  },
                  child: const Text('filter.apply').tr(),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.all(padding),
            itemCount: genreMap.length,
            itemBuilder: (BuildContext context, int index) {
              final int clickedGenreKey = genreMap.keys.toList()[index];

              return ListTile(
                horizontalTitleGap: padding,
                trailing: filterGenreModel.genres.keys.contains(clickedGenreKey)
                    ? const Icon(Remix.check_line)
                    : null,
                title: IconName(
                  logo: genreMap[genreMap.keys.toList()[index]]!.$2,
                  provName: genreMap[genreMap.keys.toList()[index]]!.$1,
                ),
                onTap: () {
                  if (filterGenreModel.genres.keys.contains(clickedGenreKey)) {
                    filterGenreController.removeGenre(clickedGenreKey);
                  } else {
                    filterGenreController.addGenre(clickedGenreKey,
                        genreMap[genreMap.keys.toList()[index]]!.$1);
                  }
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
      ],
    );
  }
}
