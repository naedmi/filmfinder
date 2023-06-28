import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

/// **************************************************************************

/// pickedProvider ***********************************************************

@freezed
class FilterProviderModel with _$FilterProviderModel {
  factory FilterProviderModel({
    @Default(<String, (int, String)>{}) Map<String, (int, String)> providers,
  }) = _FilterProviderModel;
}

/// **************************************************************************

/// pickedGenre **************************************************************

@freezed
class FilterGenreModel with _$FilterGenreModel {
  factory FilterGenreModel({
    @Default(<int, String>{}) Map<int, String> genres,
  }) = _FilterGenreModel;
}

/// **************************************************************************
