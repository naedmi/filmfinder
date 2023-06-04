import 'package:filmfinder/controllers/search/search_controller.dart'
    as search_controller;
import 'package:filmfinder/controllers/search/search_providers.dart';
import 'package:filmfinder/models/common/default_response.dart';
import 'package:filmfinder/models/search/api_search_types.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget.dart';
import 'package:filmfinder/views/search/search_result_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remixicon/remixicon.dart';

class SearchPage extends ConsumerWidget {
  SearchPage({super.key});

  final OutlineInputBorder searchBarInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadiusBig),
    borderSide: const BorderSide(
      color: Colors.transparent,
    ),
  );

  void _showNavigationSnackbar(
      {required BuildContext context,
      required DefaultResponse res,
      required search_controller.SearchController controller,
      required bool disablePrevious,
      required bool disableNext}) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusBig)),
        backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: padding,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: disablePrevious
                    ? null
                    : () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        controller.setPage(res.page - 1);
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
                        controller.setPage(res.page + 1);
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
    final search_controller.SearchController searchController =
        ref.watch(searchControllerProvider);
    final TextEditingController textController =
        TextEditingController(text: searchController.filter.query);
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
                children: <Widget>[
                  TextField(
                    controller: textController,
                    autofocus: true,
                    onSubmitted: (String value) {
                      searchController.setQuery(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: searchController.filter.query.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Remix.close_line),
                              onPressed: () {
                                textController.clear();
                                searchController.setQuery(textController.text);
                              },
                            )
                          : null,
                      suffixIcon: IconButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          searchController.setQuery(textController.text);
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
                      children: <Widget>[
                        InputChip(
                            label:
                                Text(capitalise(searchController.filter.type)),
                            shape: chipShape,
                            side: chipSite,
                            avatar: const Icon(Remix.list_check),
                            backgroundColor:
                                Theme.of(context).colorScheme.surfaceVariant,
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return ListView.separated(
                                      shrinkWrap: true,
                                      padding: const EdgeInsets.all(padding),
                                      itemCount: SearchType.values.length,
                                      itemBuilder:
                                          (BuildContext context, int index) =>
                                              ListTile(
                                        horizontalTitleGap: padding,
                                        trailing: searchController
                                                    .filter.type ==
                                                SearchType.values[index].name
                                            ? const Icon(Remix.check_line)
                                            : null,
                                        title: Text(capitalise(
                                            SearchType.values[index].name)),
                                        onTap: () {
                                          searchController.setType(
                                              SearchType.values[index].name);
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
                            label: Text(capitalise(searchLanguages[
                                searchController.filter.language]!)),
                            shape: chipShape,
                            side: chipSite,
                            avatar: const Icon(Remix.translate_2),
                            backgroundColor:
                                Theme.of(context).colorScheme.surfaceVariant,
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return ListView.separated(
                                      shrinkWrap: true,
                                      padding: const EdgeInsets.all(padding),
                                      itemCount: searchLanguages.values.length,
                                      itemBuilder:
                                          (BuildContext context, int index) =>
                                              ListTile(
                                        horizontalTitleGap: padding,
                                        trailing:
                                            searchController.filter.language ==
                                                    searchLanguages.keys
                                                        .elementAt(index)
                                                ? const Icon(Remix.check_line)
                                                : null,
                                        title: Text(capitalise(searchLanguages
                                            .values
                                            .elementAt(index))),
                                        onTap: () {
                                          searchController.setLanguage(
                                              searchLanguages.keys
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
                            label: Text((searchController.filter.year ?? 'Year')
                                .toString()),
                            shape: chipShape,
                            side: chipSite,
                            avatar: const Icon(Remix.calendar_line),
                            backgroundColor:
                                Theme.of(context).colorScheme.surfaceVariant,
                            showCheckmark: false,
                            selected: searchController.filter.year != null,
                            deleteIcon: const Icon(
                              Remix.close_line,
                              size: paddingSmall * 1.5,
                            ),
                            onDeleted: searchController.filter.year != null
                                ? () {
                                    searchController.setYear(null);
                                  }
                                : null,
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Select Year'),
                                    content: SizedBox(
                                      // Need to use container to add size constraint.
                                      width: 300,
                                      height: 300,
                                      child: YearPicker(
                                        firstDate: DateTime(1950),
                                        lastDate: DateTime.now(),
                                        initialDate: DateTime.now(),
                                        selectedDate: searchController
                                                    .filter.year !=
                                                null
                                            ? DateTime(
                                                searchController.filter.year!)
                                            : DateTime.now(),
                                        onChanged: (DateTime dateTime) {
                                          Navigator.pop(context);
                                          searchController
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
                          selected: searchController.filter.adult,
                          onSelected: (bool value) {
                            searchController.setAdult(value);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
      body: searchController.searchResponse.when(
          data: (DefaultResponse res) => res.results.isNotEmpty
              ? NotificationListener<ScrollEndNotification>(
                  onNotification: (ScrollEndNotification scrollEnd) {
                    if (scrollEnd.metrics.atEdge) {
                      _showNavigationSnackbar(
                        context: context,
                        res: res,
                        controller: searchController,
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
                    itemBuilder: (BuildContext context, int index) =>
                        SearchResultWidget(res: res.results[index]),
                    itemCount: res.results.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ))
              : searchController.filter.query.isNotEmpty
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
                            children: <Widget>[
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
          error: (Object err, StackTrace stack) => Align(
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
