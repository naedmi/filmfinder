import 'package:filmfinder/controllers/providers.dart';
import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/models/list/movie_list.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/movie_details/movie_params.dart';
import 'package:filmfinder/services/list/local_persistence_service.dart';
import 'package:filmfinder/services/movie_details/movie_details_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ListController extends AutoDisposeNotifier<MovieList> {
  List<MovieResult> getAllMovies();

  String? getMovieDetails(String id);

  void addMovie(MovieResult res);

  Future<void> addMovieByDetails(MovieDetails details);

  Future<void> addMovieById(String id);

  Future<void> removeMovie(int id);

  void clearAll();

  bool contains(int id);
}

class ListControllerImpl extends ListController {
  late LocalPersistenceService _localPersistenceService;

  @override
  List<MovieResult> getAllMovies() {
    return _localPersistenceService.getAllMovies();
  }

  @override
  String? getMovieDetails(String id) =>
      _localPersistenceService.getMovieDetails(id);

  @override
  Future<void> addMovie(MovieResult res) async {
    await _localPersistenceService.addMovie(movie: res);
    update();
  }

  @override
  Future<void> addMovieByDetails(MovieDetails details) async {
    final MovieResult movie = MovieResult(
        adult: details.adult,
        backdropPath: details.backdropPath,
        genreIds: details.genres?.map((Genre e) => e.id).toList(),
        id: details.id,
        originalLanguage: details.originalLanguage,
        originalTitle: '',
        overview: details.overview,
        popularity: details.popularity,
        posterPath: details.posterPath,
        releaseDate: details.releaseDate,
        title: details.title,
        video: details.videos?.results?.isEmpty ?? false ? false : true,
        voteAverage: details.voteAverage,
        voteCount: details.voteCount);

    await _localPersistenceService.addMovie(movie: movie);
    update();
  }

  @override
  Future<void> addMovieById(String id) async {
    int? idInt = int.tryParse(id);
    if (idInt == null) return;
    final String language =
        ref.read(providers.settingsLanguageControllerProvider).language;
    final Future<MovieDetails> movieDetails = ref.watch(movieDetailsApiService(
            MovieParams(
                movieID: idInt,
                language: language,
                appendToResponse: 'watch/providers,credits,release_dates'))
        .future);

    addMovieByDetails(await movieDetails);
  }

  @override
  Future<void> removeMovie(int id) async {
    await _localPersistenceService.removeMovie(id);
    update();
  }

  @override
  void clearAll() {
    _localPersistenceService.clearAll();
    update();
  }

  @override
  bool contains(int id) => _localPersistenceService.contains(id);

  void update() {
    state = state.copyWith(movies: getAllMovies());
  }

  @override
  MovieList build() {
    _localPersistenceService = ref.watch(localPersistenceProvider);
    return MovieList(movies: getAllMovies());
  }
}
