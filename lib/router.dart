import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:dunno/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  static const defaultTransitionDuration = Duration(milliseconds: 200);

  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      path: "/",
      children: [
        AutoRoute(
          page: SpinnerListRoute.page,
          path: 'spinners',
        ),
        AutoRoute(
          page: QuickSpinRoute.page,
          path: "quick-spin",
          title: (_, _) => "Quick Spin"
        ),
        AutoRoute(page: StatsRoute.page),
        AutoRoute(page: AccountRoute.page),
      ]
    ),
    AutoRoute(page: EditSpinnerRoute.page),
    CustomRoute(
      page: SpinnerRoute.page,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      duration: defaultTransitionDuration,
      reverseDuration: defaultTransitionDuration,
    ),
    CustomRoute(page: AllSpinnersRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      duration: defaultTransitionDuration,
      reverseDuration: defaultTransitionDuration,
    ),
    CustomRoute(page: DeletedSpinnersRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      duration: defaultTransitionDuration,
      reverseDuration: defaultTransitionDuration,
    ),
    CustomRoute(page: AppearanceSettingsRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      duration: defaultTransitionDuration,
      reverseDuration: defaultTransitionDuration,
    ),
    CustomRoute(page: ColorPalettesRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      duration: defaultTransitionDuration,
      reverseDuration: defaultTransitionDuration,
    ),
  ];
}