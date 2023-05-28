import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

class BottomNavigationWidget extends StatelessWidget {
  final ScrollController? controller;

  const BottomNavigationWidget({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        height: mainActionButtonHeight / 2 + padding,
        shape: const CircularNotchedRectangle(),
        notchMargin: paddingSmall,
        elevation: elevation,
        surfaceTintColor: Theme.of(context).canvasColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Remix.arrow_left_line,
              ),
              onPressed: () {
                if (context.canPop()) {
                  context.pop();
                } else {
                  //was das? keinen unterschied zu ein oder auskommentiert?
                  controller?.animateTo(0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                }
              },
            ),
            const MiddleButton(),
            IconButton(
              onPressed: () {
                //toDo add to list
              },
              icon: const Icon(
                Remix.add_circle_line,
              ),
            ),
          ],
        ));
  }
}

class MiddleButton extends StatelessWidget {
  const MiddleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSwipe = GoRouter.of(context).location == routeSwipe;
    if (isSwipe) {
      return SizedBox(
        width: mainActionButtonWidth * 2,
        child: Center(
          child: IconButton(
            icon: const Icon(Remix.filter_2_line),
            onPressed: () {
              //toDo open filter
            },
          ),
        ),
      );
    } else {
      return const SizedBox(width: mainActionButtonWidth * 2);
    }
  }
}

class SimpleBottomBarScaffold extends StatelessWidget {
  final Widget body;
  final AppBar? appBar;
  final ScrollController? controller;

  const SimpleBottomBarScaffold(
      {super.key, required this.body, this.appBar, this.controller});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (context.canPop()) {
          context.pop();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
          appBar: appBar,
          extendBody: true,
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: BottomNavigationWidget(controller: controller),
          body: body),
    );
  }
}
