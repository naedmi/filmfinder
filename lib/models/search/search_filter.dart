import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_filter.freezed.dart';

@freezed
class SearchFilter with _$SearchFilter {
  const factory SearchFilter(
      {@Default('') String query,
      @Default(false) bool adult,
      @Default('en-US') String language,
      @Default(1) int page,
      @Default('movie') String type,
      int? year}) = _SearchFilter;
}
