import 'package:filmfinder/view/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import 'common/navigation_widget.dart';
import 'landing_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    return MainBottomBarScaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(paddingBig),
            child: Padding(
              padding: const EdgeInsets.all(padding),
              child: SearchBar(controller: textController, trailing: [
                IconButton(
                  onPressed: () {
                    textController.clear();
                  },
                  icon: const Icon(Remix.search_line),
                )
              ]),
            ),
          )),
      body: ListView(
        padding: const EdgeInsets.all(padding),
        shrinkWrap: true,
        children: const [
          OverviewScrollWidget(title: 'Anti-Empfehlungen'),
          OverviewScrollWidget(title: 'Gesehen'),
          OverviewScrollWidget(title: 'Gehört'),
        ],
      ),
    );
  }
}
