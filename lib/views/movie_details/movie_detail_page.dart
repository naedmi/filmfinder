import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/controllers/providers.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/error_card_widget.dart';
import 'package:filmfinder/views/common/loading_card_widget.dart';
import 'package:filmfinder/views/common/navigation_widget_main_details.dart';
import 'package:filmfinder/views/common/result_poster_widget.dart';
import 'package:filmfinder/views/common/tooltip_rating_widget.dart';
import 'package:filmfinder/views/movie_details/actor_widget.dart';
import 'package:filmfinder/views/movie_details/provider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieDetailsPage extends ConsumerWidget {
  final String movieId;
  final String? fromCategory;

  const MovieDetailsPage({super.key, required this.movieId, this.fromCategory});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<MovieDetails> movieDetails =
        ref.watch(providers.movieDetailsProvider(int.parse(movieId)));

    return SimpleBottomBarScaffold(
      showMiddleButton: false,
      body: movieDetails.when(
          data: (MovieDetails details) => Container(
                padding: const EdgeInsets.all(padding),
                child: ListView(
                  children: <Widget>[
                    // Display the movie poster image
                    if (details.posterPath != null)
                      Stack(
                        children: <Widget>[
                          ResultPosterWidget(
                            id: details.id,
                            posterPath: details.posterPath,
                            category: fromCategory,
                          )
                        ],
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
                    //Display the genres as rounded boxes
                    Wrap(
                      spacing: paddingSmall,
                      runSpacing: paddingTiny,
                      children: details.genres?.map((Genre genre) {
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: paddingSmall,
                                  vertical: paddingTiny),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
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
                        TooltipRatingWidget(
                          voteAverage: details.voteAverage,
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
                    MovieProvidersWidget(
                        watchProviders: details.watchProviders),
                    const SizedBox(height: padding),
                    FilmActorsList(actors: details.credits?.cast)
                  ],
                ),
              ),
          loading: () => const LoadingCardWidget(),
          error: (Object error, StackTrace stackTrace) =>
              ErrorCardWidget(error: error, stackTrace: stackTrace)),
      movieId: movieId,
    );
  }
}
