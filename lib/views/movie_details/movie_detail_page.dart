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

    final MovieDetailsController movieDetails = ref.watch(movieDetailsProvider(int.parse(movieId)));

    return SimpleBottomBarScaffold(
      appBar: AppBar(
        title: Text('Movie Details'),
      ),
      showMiddleButton: false,
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('MovieId: $movieId'),
            Text(movieDetails.movieDetails.toString()),
            SizedBox(height: 16.0),
            Text('Beschreibung: A short description of the movie.'),
            SizedBox(height: 16.0),
            Text('Bewertung: 7.5'),
            SizedBox(height: 16.0),
            Text('Genre: Action, Drama, Thriller'),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}
