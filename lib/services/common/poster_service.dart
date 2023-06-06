String _basePath = 'https://image.tmdb.org/t/p';

String posterUrl({required String path, String width = 'w342'}) =>
    '$_basePath/$width/$path';
