import 'package:filmfinder/models/common/movie_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

final Provider<LocalPersistenceService> localPersistenceProvider =
    Provider<LocalPersistenceService>(
        (ProviderRef<LocalPersistenceService> _) =>
            LocalPersistenceServiceHive());

abstract class LocalPersistenceService {
  List<MovieResult> getAllMovies();

  String? getMovieDetails(String id);

  Future<void> addMovie({required MovieResult movie});

  Future<void> removeMovie(int id);

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
  Future<void> addMovie({required MovieResult movie}) async {
    _movies.put(movie.id, movie);
  }

  @override
  Future<void> removeMovie(int id) async {
    _movies.delete(id);
  }

  @override
  bool contains(int id) => _movies.containsKey(id);
}
