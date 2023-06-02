import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remixicon/remixicon.dart';

import '../../controllers/movie_details/movie_details_controller.dart';
import '../../controllers/movie_details/movie_details_provider.dart';
import '../common/navigation_widget_main_details.dart';

class MovieDetailsPage extends ConsumerWidget {
  final String movieId;

  const MovieDetailsPage({super.key, required this.movieId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MovieDetailsController movieDetailsController = ref.watch(movieDetailsProvider(int.parse(movieId)));

    return SimpleBottomBarScaffold(
      showMiddleButton: false,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Display the movie poster image
            if (movieDetailsController.movieDetails.value?.posterPath != null)
              CachedNetworkImage(
                imageUrl: 'https://image.tmdb.org/t/p/w500${movieDetailsController.movieDetails.value?.posterPath}',
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Remix.error_warning_line),
              ),
            const SizedBox(height: 16.0),
            // Display the movie title
            Center(
              child: Text(
                movieDetailsController.movieDetails.value!.title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16.0),
            //Display the genres as rounded boxes
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: movieDetailsController.movieDetails.value?.genres?.map((genre) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(genre['name']),
                );
              }).toList() ?? [],
            ),
            const SizedBox(height: 16.0),
            // Display the movie star rating
            Wrap(
              spacing: 8.0,
              children: [
                Tooltip(
                  message: '${movieDetailsController.movieDetails.value?.voteAverage} / 10 stars',
                  child: RatingBarIndicator(
                    itemSize: 20.0,
                    rating: (movieDetailsController.movieDetails.value?.voteAverage ?? 0) / 2,
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
                  '${movieDetailsController.movieDetails.value?.voteCount} votes',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            ),

            const SizedBox(height: 16.0),
            // Display the movie overview
            Text(
              movieDetailsController.movieDetails.value!.overview,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16.0),
            // Display the vote average and vote count
          // Add more details as needed
          ],
        ),
      ),
    );
  }
}
