import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Routes ********************************************************************
const List<String> routes = <String>[
  '/',
  '/list',
  '/swipe',
  '/search',
  '/settings',
  '/details',
];
final String routeHome = routes[0];
final String routeList = routes[1];
final String routeSwipe = routes[2];
final String routeSearch = routes[3];
final String routeSettings = routes[4];
final String routeDetails = routes[5];

/// ***************************************************************************

/// tmdb **********************************************************************
double posterContainerDefaultHeight(BuildContext context) =>
    MediaQuery.of(context).size.width / 3 + paddingBig * 2;

const List<String> posterSizes = <String>[
  'w92',
  'w154',
  'w185',
  'w342',
  'w500',
  'w780',
  'original'
];

const Map<String, String> searchLanguages = <String, String>{
  'en-US': 'English',
  'de-DE': 'German',
  'fr-FR': 'French',
  'es-ES': 'Spanish',
  'it-IT': 'Italian',
  'ja-JP': 'Japanese',
};

/// **************************************************************************

/// Search *******************************************************************
const String iconHeroTag = 'search';

String capitalise(String s) {
  return s[0].toUpperCase() + s.substring(1);
}

const RoundedRectangleBorder chipShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(borderRadiusBig),
  ),
);

const BorderSide chipSite = BorderSide(
  color: Colors.transparent,
);

/// **************************************************************************

/// Radius & Padding *********************************************************
const double borderRadiusBig = 24.0;
const double borderRadius = 12.0;
const double borderRadiusSmall = 6.0;

const double paddingBig = 48.0;
const double paddingMedium = 24.0;
const double paddingSmall = 12.0;
const double paddingTiny = 6.0;
const double padding = paddingMedium;

/// **************************************************************************

/// Various Sizes ************************************************************
const double mainActionButtonHeight = 84.0;
const double mainActionButtonWidth = 84.0;

const double elevation = paddingSmall;

/// **************************************************************************

/// FlexColorScheme **********************************************************
final ThemeData theme = FlexThemeData.light(
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
final ThemeData darkTheme = FlexThemeData.dark(
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

/// Animation ****************************************************************
const int animationDuration = 1000;
const int animationDelay = 250;

/// **************************************************************************
