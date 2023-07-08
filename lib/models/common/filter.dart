import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

/// **************************************************************************

/// pickedProvider ***********************************************************

@freezed
class FilterProviderModel with _$FilterProviderModel {
  factory FilterProviderModel({
    @Default(<int, (String, String)>{}) Map<int, (String, String)> providers,
    @Default('en-US') String language,
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
