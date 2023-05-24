// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchSearchResultHash() => r'11624d774fbfb0b0254760d4a4e581e3a56f9a12';

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
  FetchSearchResultProvider call(
    String search,
  ) {
    return FetchSearchResultProvider(
      search,
    );
  }

  @override
  FetchSearchResultProvider getProviderOverride(
    covariant FetchSearchResultProvider provider,
  ) {
    return call(
      provider.search,
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
  FetchSearchResultProvider(
    this.search,
  ) : super.internal(
          (ref) => fetchSearchResult(
            ref,
            search,
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

  final String search;

  @override
  bool operator ==(Object other) {
    return other is FetchSearchResultProvider && other.search == search;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
