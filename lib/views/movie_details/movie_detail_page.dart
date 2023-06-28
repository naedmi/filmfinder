import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/controllers/movie_details/movie_details_controller.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/providers.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget_main_details.dart';
import 'package:filmfinder/views/movie_details/actor_widget.dart';
import 'package:filmfinder/views/movie_details/provider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remixicon/remixicon.dart';

class MovieDetailsPage extends ConsumerWidget {
  final String movieId;

  const MovieDetailsPage({super.key, required this.movieId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MovieDetailsController movieDetailsController =
        ref.watch(providers.movieDetailsProvider(int.parse(movieId)));

    return SimpleBottomBarScaffold(
        showMiddleButton: false,
        body: movieDetailsController.movieDetails.when(
          data: (MovieDetails details) => Container(
            padding: const EdgeInsets.all(padding),
            child: ListView(
              children: <Widget>[
                // Display the movie poster image
                if (details.posterPath != null)
                  CachedNetworkImage(
                    imageUrl:
                        'https://image.tmdb.org/t/p/w500${details.posterPath}',
                    placeholder: (BuildContext context, String url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (BuildContext context, String url, _) =>
                        const Icon(Remix.error_warning_line),
                  ),
                const SizedBox(height: padding),
                // Display the movie title
                Center(
                  child: Text(
                    details.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                const SizedBox(height: padding),
                // Display the genres as rounded boxes
                Wrap(
                  spacing: paddingSmall,
                  runSpacing: paddingTiny,
                  children: details.genres?.map((Genre genre) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: paddingSmall, vertical: paddingTiny),
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          child: Text(genre.name),
                        );
                      }).toList() ??
                      <Widget>[],
                ),
                const SizedBox(height: padding),
                // Display the movie star rating
                Wrap(
                  spacing: paddingSmall,
                  children: <Widget>[
                    Tooltip(
                      message: '${details.voteAverage} / 10 stars',
                      child: RatingBarIndicator(
                        itemSize: padding,
                        rating: (details.voteAverage ?? 0) / 2,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Icon(
                            Remix.star_fill,
                            color: Theme.of(context).colorScheme.primary,
                          );
                        },
                      ),
                    ),
                    Text(
                      '${details.voteCount} ${"details.votes".tr()}',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),

                const SizedBox(height: padding),
                // Display the movie overview
                Text(
                  details.overview,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: paddingBig),
                MovieProvidersWidget(watchProviders: details.watchProviders),
                const SizedBox(height: padding),
                FilmActorsList(actors: details.credits?.cast)
              ],
            ),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (Object error, StackTrace stackTrace) => Align(
            alignment: Alignment.topCenter,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(padding),
                child: Text('Could not load data: ${error.toString()}'),
              ),
            ),
          ),
        ),
        movieId: AsyncValue<String>.data(movieId));
  }
}
