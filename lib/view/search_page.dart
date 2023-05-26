import 'package:cached_network_image/cached_network_image.dart';
import 'package:filmfinder/model/search_response.dart';
import 'package:filmfinder/provider/search_provider.dart';
import 'package:filmfinder/view/common/constants.dart';
import 'package:filmfinder/view/common/navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remixicon/remixicon.dart';

class SearchPage extends ConsumerWidget {

  final OutlineInputBorder searchBarInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadiusBig),
    borderSide: const BorderSide(
      color: Colors.transparent,
    ),
  );

  _showNavigationSnackbar(
      {required BuildContext context,
      required SearchResponse res,
        required WidgetRef ref,
      required bool disablePrevious,
      required bool disableNext}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusBig)),
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: padding,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: disablePrevious
                    ? null
                    : () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ref.read(filterProvider.notifier).setPage(res.page - 1);
                      },
                icon: const Icon(Remix.arrow_left_s_line),
              ),
            ),
            Text(
              'Page ${res.page} of ${res.totalPages}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              height: padding,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: disableNext
                    ? null
                    : () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ref.read(filterProvider.notifier).setPage(res.page + 1);
                      },
                icon: const Icon(Remix.arrow_right_s_line),
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResponse = ref.watch(fetchSearchResultProvider);
    final filter = ref.watch(filterProvider);
    final filterNotifier = ref.read(filterProvider.notifier);
    final textController = TextEditingController(text: filter.query);
    return MainBottomBarScaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(paddingBig + padding),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: padding, vertical: paddingSmall),
              child: Column(
                children: [
                  TextField(
                    controller: textController,
                    autofocus: true,
                    onSubmitted: (String value) {
                      filterNotifier.setQuery(textController.text);
                    },
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: filter.query.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Remix.close_line),
                              onPressed: () {
                                textController.clear();
                                filterNotifier.setQuery(textController.text);
                              },
                            )
                          : null,
                      suffixIcon: IconButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          filterNotifier.setQuery(textController.text);
                        },
                        icon: const Icon(Remix.search_line),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: paddingSmall),
                      enabledBorder: searchBarInputBorder,
                      focusedBorder: searchBarInputBorder,
                      border: searchBarInputBorder,
                    ),
                  ),
                  SizedBox(
                    height: paddingBig,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(top: paddingTiny),
                      children: [
                        InputChip(
                            label: Text(capitalise(filter.type)),
                            shape: chipShape,
                            side: chipSite,
                            avatar: const Icon(Remix.list_check),
                            backgroundColor:
                                Theme.of(context).colorScheme.surfaceVariant,
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return ListView.separated(
                                      shrinkWrap: true,
                                      padding: const EdgeInsets.all(padding),
                                      itemCount: SearchType.values.length,
                                      itemBuilder: (context, index) => ListTile(
                                        horizontalTitleGap: padding,
                                        trailing: filter.type ==
                                                SearchType.values[index].name
                                            ? const Icon(Remix.check_line)
                                            : null,
                                        title: Text(capitalise(
                                            SearchType.values[index].name)),
                                        onTap: () {
                                          filterNotifier
                                              .setType(SearchType
                                                  .values[index].name);
                                          Navigator.pop(context);
                                        },
                                      ),
                                      separatorBuilder:
                                          (BuildContext context, int index) =>
                                              const Divider(),
                                    );
                                  });
                            }),
                        const Divider(indent: paddingTiny),
                        InputChip(
                            label: Text(
                                capitalise(searchLanguages[filter.language]!)),
                            shape: chipShape,
                            side: chipSite,
                            avatar: const Icon(Remix.translate_2),
                            backgroundColor:
                                Theme.of(context).colorScheme.surfaceVariant,
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return ListView.separated(
                                      shrinkWrap: true,
                                      padding: const EdgeInsets.all(padding),
                                      itemCount: searchLanguages.values.length,
                                      itemBuilder: (context, index) => ListTile(
                                        horizontalTitleGap: padding,
                                        trailing: filter.language ==
                                                searchLanguages.keys
                                                    .elementAt(index)
                                            ? const Icon(Remix.check_line)
                                            : null,
                                        title: Text(capitalise(searchLanguages
                                            .values
                                            .elementAt(index))),
                                        onTap: () {
                                          filterNotifier
                                              .setLanguage(searchLanguages.keys
                                                  .elementAt(index));
                                          Navigator.pop(context);
                                        },
                                      ),
                                      separatorBuilder:
                                          (BuildContext context, int index) =>
                                              const Divider(),
                                    );
                                  });
                            }),
                        const Divider(indent: paddingTiny),
                        InputChip(
                            label: Text((filter.year ?? 'Year').toString()),
                            shape: chipShape,
                            side: chipSite,
                            avatar: const Icon(Remix.calendar_line),
                            backgroundColor:
                                Theme.of(context).colorScheme.surfaceVariant,
                            showCheckmark: false,
                            selected: filter.year != null,
                            deleteIcon: const Icon(
                              Remix.close_line,
                              size: paddingSmall * 1.5,
                            ),
                            onDeleted: filter.year != null
                                ? () {
                                    filterNotifier
                                        .setYear(null);
                                  }
                                : null,
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text("Select Year"),
                                    content: SizedBox(
                                      // Need to use container to add size constraint.
                                      width: 300,
                                      height: 300,
                                      child: YearPicker(
                                        firstDate: DateTime(1950),
                                        lastDate: DateTime.now(),
                                        initialDate: DateTime.now(),
                                        selectedDate: filter.year != null
                                            ? DateTime(filter.year!)
                                            : DateTime.now(),
                                        onChanged: (DateTime dateTime) {
                                          Navigator.pop(context);
                                          filterNotifier
                                                .setYear(dateTime.year);
                                        },
                                      ),
                                    ),
                                  );
                                },
                              );
                            }),
                        const Divider(indent: paddingTiny),
                        FilterChip(
                          label: const Text('Adult'),
                          shape: chipShape,
                          side: chipSite,
                          backgroundColor:
                              Theme.of(context).colorScheme.surfaceVariant,
                          selected: filter.adult,
                          onSelected: (bool value) {
                            filterNotifier.setAdult(value);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
      body: searchResponse.when(
          data: (res) => res.results.isNotEmpty
              ? NotificationListener<ScrollEndNotification>(
                  onNotification: (scrollEnd) {
                    if (scrollEnd.metrics.atEdge) {
                      _showNavigationSnackbar(
                        context: context,
                        res: res,
                        ref: ref,
                        disablePrevious: res.page == 1,
                        disableNext: res.page == res.totalPages,
                      );
                    }
                    return true;
                  },
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(
                        left: padding, right: padding, bottom: paddingBig * 2),
                    itemBuilder: (context, index) =>
                        SearchResultWidget(res: res.results[index]),
                    itemCount: res.results.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ))
              : filter.query.isNotEmpty
                  ? const Align(
                      alignment: Alignment.topCenter,
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(padding),
                          child: Text('No results found'),
                        ),
                      ),
                    )
                  : const Align(
                      alignment: Alignment.topCenter,
                      child: Card(
                        child: SizedBox(
                          height: paddingBig * 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Remix.search_eye_line,
                                  size: paddingBig + padding),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: paddingBig,
                                    right: paddingBig,
                                    top: padding),
                                child: Text('Enter something to search...'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
          error: (err, stack) => Align(
                alignment: Alignment.topCenter,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(padding),
                    child: Text('Could not load data: ${err.toString()}'),
                  ),
                ),
              ),
          loading: () => const Align(
                alignment: Alignment.topCenter,
                child: Card(
                    child: Padding(
                  padding: EdgeInsets.all(padding),
                  child: CircularProgressIndicator(),
                )),
              )),
    );
  }
}

class SearchResultWidget extends StatelessWidget {
  final SearchResult res;

  const SearchResultWidget({Key? key, required this.res}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(paddingTiny),
      child: Stack(alignment: AlignmentDirectional.centerStart, children: [
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(paddingSmall),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width / 3 +
                      paddingBig -
                      paddingSmall * 2,
                  width: MediaQuery.of(context).size.width / 3 * 2 -
                      paddingBig * 2 -
                      paddingSmall,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Tooltip(
                        message: res.title ?? '',
                        child: Text(
                          res.title ?? res.originalTitle ?? '',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Divider(),
                      Wrap(spacing: paddingTiny, children: [
                        Tooltip(
                          message: '${res.voteAverage.toString()} / 10 stars',
                          child: RatingBarIndicator(
                            itemSize: padding,
                            rating: (res.voteAverage ?? 0) / 2,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return Icon(
                                Remix.star_fill,
                                color: Theme.of(context).colorScheme.primary,
                              );
                            },
                          ),
                        ),
                        Text(
                          '${res.voteCount} votes',
                          style: const TextStyle(fontSize: paddingSmall),
                        ),
                      ]),
                      const Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(borderRadiusBig),
                              color:
                                  Theme.of(context).colorScheme.surfaceVariant,
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: paddingSmall,
                                horizontal: paddingSmall + paddingTiny),
                            child: Text(
                              res.releaseDate?.isNotEmpty ?? false
                                  ? DateTime.parse(res.releaseDate!)
                                      .year
                                      .toString()
                                  : '',
                            ),
                          ),
                          const Spacer(),
                          Tooltip(
                            message: 'Add to list',
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Icon(
                                Remix.heart_line,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            // TODO: Add navigation when detail page is ready
            //context.pushNamed(
            //  '/details',
            //  pathParameters: {'id': res.id.toString()},
            //);
          },
          child: Material(
            elevation: elevation,
            borderRadius: BorderRadius.circular(borderRadiusBig),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadiusBig),
              child: CachedNetworkImage(
                imageUrl: poster(path: res.posterPath ?? ''),
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width / 3 + paddingSmall,
                height: MediaQuery.of(context).size.width / 3 + paddingBig * 2,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    const Icon(Remix.image_2_line, size: 100),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
