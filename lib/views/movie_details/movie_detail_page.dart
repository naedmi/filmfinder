import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      appBar: AppBar(
        title: const Text('Movie Details'),
      ),
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
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            const SizedBox(height: 16.0),
            // Display the movie title
            Text(
              movieDetailsController.movieDetails.value!.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            // Display the genres as rounded boxes
            // Wrap(
            //   spacing: 8.0,
            //   runSpacing: 4.0,
            //   children: movieDetailsController.movieDetails.genres?.map((genre) {
            //     return Container(
            //       padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            //       decoration: BoxDecoration(
            //         color: Colors.grey[300],
            //         borderRadius: BorderRadius.circular(12.0),
            //       ),
            //       child: Text(genre),
            //     );
            //   }).toList() ?? [],
            // ),
            const SizedBox(height: 16.0),
            // Display the movie overview
            Text(
              movieDetailsController.movieDetails.value!.overview,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16.0),
            // Display the vote average and vote count
            Text('Bewertung: ${movieDetailsController.movieDetails.value?.voteAverage} (${movieDetailsController.movieDetails.value?.voteCount} votes)'),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}
