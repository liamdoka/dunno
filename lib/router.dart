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
          children: [

          ]
        ),
        AutoRoute(page: QuickSpinRoute.page),
        AutoRoute(page: StatsRoute.page),
        AutoRoute(page: AccountRoute.page),
      ]
    ),
  ];
}