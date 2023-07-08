import 'package:filmfinder/controllers/providers.dart';
import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/models/list/movie_list.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/services/list/local_persistence_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ListController extends AutoDisposeNotifier<MovieList> {
  List<MovieResult> getAllMovies();

  String? getMovieDetails(String id);

  void addMovie(MovieResult res);

  void addMovieByDetails(MovieDetails details);

  void addMovieById(String id);

  void removeMovie(int id);

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
  void addMovie(MovieResult res) {
    _localPersistenceService.addMovie(movie: res);
    update();
  }

  @override
  void addMovieByDetails(MovieDetails details) {
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

    _localPersistenceService.addMovie(movie: movie);
    update();
  }

  @override
  void addMovieById(String id) async {
    final AsyncValue<MovieDetails> movieDetails =
        ref.watch(providers.movieDetailsProvider(int.parse(id)));

    movieDetails.whenData((MovieDetails details) => addMovieByDetails(details));
  }

  @override
  void removeMovie(int id) {
    _localPersistenceService.removeMovie(id);
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
