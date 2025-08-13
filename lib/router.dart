import 'package:auto_route/auto_route.dart';
import 'package:dunno/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  static const defaultTransitionDuration = Duration(milliseconds: 200);

  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  RouteType get slideBottom => RouteType.custom(
    transitionsBuilder: TransitionsBuilders.slideBottom,
    duration: defaultTransitionDuration,
    reverseDuration: defaultTransitionDuration,
  );

  RouteType get slideLeftWithFade => RouteType.custom(
    transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    duration: defaultTransitionDuration,
    reverseDuration: defaultTransitionDuration,
  );

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      path: "/",
      children: [
        AutoRoute(page: SpinnerListRoute.page),
        AutoRoute(page: QuickSpinRoute.page),
        AutoRoute(page: StatsRoute.page),
        AutoRoute(page: AccountRoute.page),
      ],
    ),
    AutoRoute(page: EditSpinnerRoute.page),
    AutoRoute(page: SpinnerRoute.page, type: slideBottom),
    AutoRoute(page: AllSpinnersRoute.page, type: slideLeftWithFade),
    AutoRoute(page: DeletedSpinnersRoute.page, type: slideLeftWithFade),
    AutoRoute(page: AppearanceSettingsRoute.page, type: slideLeftWithFade),
    AutoRoute(page: ColorPalettesRoute.page, type: slideLeftWithFade),
    AutoRoute(page: EditColorPaletteRoute.page, type: slideLeftWithFade),
  ];
}
