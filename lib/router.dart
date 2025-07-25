import 'package:auto_route/auto_route.dart';
import 'package:dunno/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

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
    CustomRoute(
      page: SpinnerRoute.page,
      // fullscreenDialog: true,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      duration: const Duration(milliseconds: 200),
      reverseDuration: const Duration(milliseconds: 200),
    ),
    CustomRoute(page: AllSpinnersRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      duration: const Duration(milliseconds: 200),
      reverseDuration: const Duration(milliseconds: 200),
    ),
    AutoRoute(page: EditSpinnerRoute.page)
  ];
}