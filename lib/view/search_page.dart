import 'package:cached_network_image/cached_network_image.dart';
import 'package:filmfinder/model/search_response.dart';
import 'package:filmfinder/provider/search_provider.dart';
import 'package:filmfinder/view/common/constants.dart';
import 'package:filmfinder/view/common/navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remixicon/remixicon.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchPage> createState() => SearchPageState();
}

class SearchPageState extends ConsumerState<SearchPage> {
  final textController = TextEditingController();

  AsyncValue<SearchResponse> searchResponse = const AsyncValue.loading();
  String query = '';
  Filter filter = Filter();

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    searchResponse = ref.watch(fetchSearchResultProvider(query: query));
    filter = ref.watch(filterProvider);
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
                      setState(() {
                        query = textController.text;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: IconButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          setState(() {
                            query = textController.text;
                          });
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
                                          ref
                                              .read(filterProvider.notifier)
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
                        FilterChip(
                          label: const Text('Adult'),
                          shape: chipShape,
                          side: chipSite,
                          backgroundColor:
                              Theme.of(context).colorScheme.surfaceVariant,
                          selected: filter.adult,
                          onSelected: (bool value) {
                            ref.read(filterProvider.notifier).setAdult(value);
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
      body: searchResponse.when(
          data: (res) => res.results.isNotEmpty
              ? ListView.separated(
                  padding: const EdgeInsets.only(
                      left: padding, right: padding, bottom: paddingBig * 2),
                  itemBuilder: (context, index) =>
                      SearchResultWidget(res: res.results[index]),
                  itemCount: res.results.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                )
              : query.isNotEmpty
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

capitalise(String s) {
  return s[0].toUpperCase() + s.substring(1);
}

final OutlineInputBorder searchBarInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(borderRadiusBig),
  borderSide: const BorderSide(
    color: Colors.transparent,
  ),
);

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width / 3 +
                    paddingBig +
                    paddingSmall,
                width: MediaQuery.of(context).size.width / 3,
                child: const SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.all(paddingSmall),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width / 3 +
                      paddingBig -
                      paddingSmall * 2,
                  width: MediaQuery.of(context).size.width / 3 * 2 -
                      paddingBig * 2 -
                      paddingSmall * 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        res.title ?? res.originalTitle ?? '',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        res.releaseDate?.isNotEmpty ?? false
                            ? DateTime.parse(res.releaseDate!).year.toString()
                            : '',
                      ),
                      const Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Icon(
                              Remix.heart_line,
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
        Material(
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
      ]),
    );
  }
}
