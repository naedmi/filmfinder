import 'package:filmfinder/view/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

class BottomNavigationWidget extends StatelessWidget {
  final ScrollController? controller;

  const BottomNavigationWidget({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isHome = GoRouter.of(context).location == routeHome;
    final isList = GoRouter.of(context).location == routeList;
    return BottomAppBar(
        height: mainActionButtonHeight / 2 + padding,
        shape: const CircularNotchedRectangle(),
        notchMargin: paddingSmall,
        elevation: elevation,
        surfaceTintColor: Theme.of(context).canvasColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                if (!isHome) {
                  context.push(routeHome);
                } else {
                  controller?.animateTo(0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                }
              },
              icon: Icon(
                isHome ? Remix.home_fill : Remix.home_line,
              ),
            ),
            const SizedBox(width: mainActionButtonWidth * 2),
            IconButton(
                onPressed: () {
                  if (!isList) {
                    context.push(routeList);
                  }
                },
                icon: Icon(
                  isList ? Remix.bookmark_fill : Remix.bookmark_line,
                )),
          ],
        ));
  }
}

class MainBottomBarScaffold extends StatelessWidget {
  final Widget body;
  final AppBar? appBar;
  final ScrollController? controller;

  const MainBottomBarScaffold(
      {super.key, required this.body, this.appBar, this.controller});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (context.canPop()) {
          context.pop();
          return false;
        } else {
          bool? exitResult = await showDialog(
            context: context,
            builder: (context) => _buildExitDialog(context),
          );
          return exitResult ?? false;
        }
      },
      child: Scaffold(
          appBar: appBar,
          extendBody: true,
          floatingActionButton: SizedBox(
            width: mainActionButtonWidth,
            height: mainActionButtonWidth,
            child: FloatingActionButton(
              onPressed: () {
                context.push(routeSwipe);
              },
              backgroundColor: Colors.transparent,
              elevation: paddingSmall,
              shape: const CircleBorder(),
              child: Animate(
                effects: const [
                  ShimmerEffect(
                    delay: Duration(milliseconds: 250),
                    duration: Duration(milliseconds: 500),
                  ),
                ],
                child: const GradientDecoration(
                  width: mainActionButtonWidth,
                  height: mainActionButtonWidth,
                  child: Icon(Remix.play_fill,
                      size: mainActionButtonWidth - padding - paddingSmall),
                ),
              ),
            ),
          ),
          resizeToAvoidBottomInset: false,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationWidget(controller: controller),
          body: body),
    );
  }

  AlertDialog _buildExitDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Are you sure?'),
      content: const Text('We hate to see you leave...'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('Yes'),
        ),
      ],
    );
  }
}

customPageBuilder(Widget child, context, state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.linear).animate(animation),
        child: child,
      );
    },
  );
}

class GradientDecoration extends StatelessWidget {
  final Widget child;

  final double? width;
  final double? height;

  const GradientDecoration(
      {super.key, required this.child, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).canvasColor,
                Theme.of(context).primaryColorLight,
              ])),
      child: child,
    );
  }
}
