import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Routes ********************************************************************
const routes = [
  '/',
  '/list',
  '/swipe',
  '/search',
];
final routeHome = routes[0];
final routeList = routes[1];
final routeSwipe = routes[2];
final routeSearch = routes[3];

/// ***************************************************************************

/// tmdb **********************************************************************

const posterSizes = ["w92", "w154", "w185", "w342", "w500", "w780", "original"];

poster({required String path, dynamic width = "w342"}) =>
    'https://image.tmdb.org/t/p/${width is num ? 'w$width' : width}/$path';

enum SearchType {
  movie,
  // TODO: implement different model provider for each type
  //tv,
  //person,
  //multi,
}

const searchLanguages = {
  "en-US": 'English',
  "de-DE": 'German',
  "fr-FR": 'French',
  "es-ES": 'Spanish',
  "it-IT": 'Italian',
  "ja-JP": 'Japanese',
};

/// **************************************************************************

/// Search *******************************************************************

capitalise(String s) {
  return s[0].toUpperCase() + s.substring(1);
}

const chipShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(borderRadiusBig),
  ),
);

const chipSite = BorderSide(
  color: Colors.transparent,
);

/// **************************************************************************

/// Radius & Padding *********************************************************
const borderRadiusBig = 24.0;
const borderRadius = 12.0;
const borderRadiusSmall = 6.0;

const paddingBig = 48.0;
const paddingMedium = 24.0;
const paddingSmall = 12.0;
const paddingTiny = 6.0;
const padding = paddingMedium;

/// **************************************************************************

/// Various Sizes ************************************************************
const mainActionButtonHeight = 84.0;
const mainActionButtonWidth = 84.0;

const elevation = paddingSmall;

/// **************************************************************************

/// FlexColorScheme **********************************************************
final theme = FlexThemeData.light(
  scheme: FlexScheme.deepBlue,
  subThemesData: const FlexSubThemesData(
    interactionEffects: false,
    tintedDisabledControls: false,
    inputDecoratorBorderType: FlexInputBorderType.underline,
    inputDecoratorUnfocusedBorderIsColored: false,
    tooltipRadius: 4,
    tooltipSchemeColor: SchemeColor.inverseSurface,
    tooltipOpacity: 0.9,
    snackBarElevation: 6,
    snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
    navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
    navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
    navigationBarMutedUnselectedLabel: false,
    navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
    navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
    navigationBarMutedUnselectedIcon: false,
    navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationBarIndicatorOpacity: 1.00,
    navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
    navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
    navigationRailMutedUnselectedLabel: false,
    navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
    navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
    navigationRailMutedUnselectedIcon: false,
    navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationRailIndicatorOpacity: 1.00,
    navigationRailBackgroundSchemeColor: SchemeColor.surface,
    navigationRailLabelType: NavigationRailLabelType.none,
  ),
  keyColors: const FlexKeyColors(),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  fontFamily: GoogleFonts.notoSans().fontFamily,
);
final darkTheme = FlexThemeData.dark(
  scheme: FlexScheme.deepBlue,
  subThemesData: const FlexSubThemesData(
    interactionEffects: false,
    tintedDisabledControls: false,
    inputDecoratorBorderType: FlexInputBorderType.underline,
    inputDecoratorUnfocusedBorderIsColored: false,
    tooltipRadius: 4,
    tooltipSchemeColor: SchemeColor.inverseSurface,
    tooltipOpacity: 0.9,
    snackBarElevation: 6,
    snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
    navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
    navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
    navigationBarMutedUnselectedLabel: false,
    navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
    navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
    navigationBarMutedUnselectedIcon: false,
    navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationBarIndicatorOpacity: 1.00,
    navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
    navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
    navigationRailMutedUnselectedLabel: false,
    navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
    navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
    navigationRailMutedUnselectedIcon: false,
    navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
    navigationRailIndicatorOpacity: 1.00,
    navigationRailBackgroundSchemeColor: SchemeColor.surface,
    navigationRailLabelType: NavigationRailLabelType.none,
  ),
  keyColors: const FlexKeyColors(),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  fontFamily: GoogleFonts.notoSans().fontFamily,
);

/// **************************************************************************