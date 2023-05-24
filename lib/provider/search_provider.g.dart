// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchSearchResultHash() => r'efb199c562ace55672aa3b4a12fa03e30c112cd5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef FetchSearchResultRef = AutoDisposeFutureProviderRef<SearchResponse>;

/// See also [fetchSearchResult].
@ProviderFor(fetchSearchResult)
const fetchSearchResultProvider = FetchSearchResultFamily();

/// See also [fetchSearchResult].
class FetchSearchResultFamily extends Family<AsyncValue<SearchResponse>> {
  /// See also [fetchSearchResult].
  const FetchSearchResultFamily();

  /// See also [fetchSearchResult].
  FetchSearchResultProvider call({
    required String query,
    String type = 'movie',
    bool adult = false,
    String language = 'en-US',
    int page = 1,
  }) {
    return FetchSearchResultProvider(
      query: query,
      type: type,
      adult: adult,
      language: language,
      page: page,
    );
  }

  @override
  FetchSearchResultProvider getProviderOverride(
    covariant FetchSearchResultProvider provider,
  ) {
    return call(
      query: provider.query,
      type: provider.type,
      adult: provider.adult,
      language: provider.language,
      page: provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchSearchResultProvider';
}

/// See also [fetchSearchResult].
class FetchSearchResultProvider
    extends AutoDisposeFutureProvider<SearchResponse> {
  /// See also [fetchSearchResult].
  FetchSearchResultProvider({
    required this.query,
    this.type = 'movie',
    this.adult = false,
    this.language = 'en-US',
    this.page = 1,
  }) : super.internal(
          (ref) => fetchSearchResult(
            ref,
            query: query,
            type: type,
            adult: adult,
            language: language,
            page: page,
          ),
          from: fetchSearchResultProvider,
          name: r'fetchSearchResultProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchSearchResultHash,
          dependencies: FetchSearchResultFamily._dependencies,
          allTransitiveDependencies:
              FetchSearchResultFamily._allTransitiveDependencies,
        );

  final String query;
  final String type;
  final bool adult;
  final String language;
  final int page;

  @override
  bool operator ==(Object other) {
    return other is FetchSearchResultProvider &&
        other.query == query &&
        other.type == type &&
        other.adult == adult &&
        other.language == language &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);
    hash = _SystemHash.combine(hash, adult.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
