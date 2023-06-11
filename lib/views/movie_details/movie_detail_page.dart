import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remixicon/remixicon.dart';

import 'package:filmfinder/controllers/movie_details/movie_details_controller.dart';
import 'package:filmfinder/controllers/movie_details/movie_details_provider.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget_main_details.dart';

class MovieDetailsPage extends ConsumerWidget {
  final String movieId;

  const MovieDetailsPage({super.key, required this.movieId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MovieDetailsController movieDetailsController =
        ref.watch(movieDetailsProvider(int.parse(movieId)));

    return SimpleBottomBarScaffold(
      showMiddleButton: false,
      body: movieDetailsController.movieDetails.when(
        data: (MovieDetails details) => Container(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              // Display the movie poster image
              if (details.posterPath != null)
                CachedNetworkImage(
                  imageUrl:
                      'https://image.tmdb.org/t/p/w500${details.posterPath}',
                  placeholder: (BuildContext context, String url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (BuildContext context, String url, error) =>
                      const Icon(Remix.error_warning_line),
                ),
              const SizedBox(height: 16.0),
              // Display the movie title
              Center(
                child: Text(
                  details.title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16.0),
              //Display the genres as rounded boxes
              Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: details.genres?.map((Genre genre) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Text(genre.name),
                      );
                    }).toList() ??
                    [],
              ),
              const SizedBox(height: 16.0),
              // Display the movie star rating
              Wrap(
                spacing: 8.0,
                children: [
                  Tooltip(
                    message: '${details.voteAverage} / 10 stars',
                    child: RatingBarIndicator(
                      itemSize: 20.0,
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
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),

              const SizedBox(height: 16.0),
              // Display the movie overview
              Text(
                details.overview,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16.0),
              Text(
                details.watchProviders.toString(),
                style: const TextStyle(fontSize: 16),
              ),
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
    );
  }
}
