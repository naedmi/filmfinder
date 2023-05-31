import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/navigation_widget_main_details.dart';

class MovieDetailsPage extends ConsumerWidget {
  final String movieId;

  MovieDetailsPage({super.key, required this.movieId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SimpleBottomBarScaffold(
      appBar: AppBar(
        title: Text('Movie Details'),
      ),
      showMiddleButton: false,
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Movie Title',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('MovieId: $movieId'),
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
