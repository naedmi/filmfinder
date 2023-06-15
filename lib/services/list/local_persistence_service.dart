import 'package:filmfinder/models/common/movie_result.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class LocalPersistenceService {
  List<MovieResult> getAllMovies();

  String? getMovieDetails(String id);

  void addMovie({required MovieResult movie});

  void removeMovie(int id);

  void clearAll();

  bool contains(int id);
}

class LocalPersistenceServiceHive implements LocalPersistenceService {
  late final Box<MovieResult> _movies;

  LocalPersistenceServiceHive() {
    _movies = Hive.box<MovieResult>('fav_movies');
  }

  @override
  void clearAll() {
    _movies.clear();
  }

  @override
  List<MovieResult> getAllMovies() => _movies.values.toList();

  @override
  String? getMovieDetails(String id) => _movies.get(id)?.overview;

  @override
  void addMovie({required MovieResult movie}) {
    _movies.put(movie.id, movie);
  }

  @override
  void removeMovie(int id) {
    _movies.delete(id);
  }

  @override
  bool contains(int id) => _movies.containsKey(id);
}
