// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:dunno/screens/account/account_screen.dart' as _i1;
import 'package:dunno/screens/home/home_screen.dart' as _i2;
import 'package:dunno/screens/quick_spin/quick_spin_screen.dart' as _i3;
import 'package:dunno/screens/spinner_list/spinner_list_screen.dart' as _i4;
import 'package:dunno/screens/stats/stats_screen.dart' as _i5;

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i6.PageRouteInfo<void> {
  const AccountRoute({List<_i6.PageRouteInfo>? children})
    : super(AccountRoute.name, initialChildren: children);

  static const String name = 'AccountRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.QuickSpinScreen]
class QuickSpinRoute extends _i6.PageRouteInfo<void> {
  const QuickSpinRoute({List<_i6.PageRouteInfo>? children})
    : super(QuickSpinRoute.name, initialChildren: children);

  static const String name = 'QuickSpinRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.QuickSpinScreen();
    },
  );
}

/// generated route for
/// [_i4.SpinnerListScreen]
class SpinnerListRoute extends _i6.PageRouteInfo<void> {
  const SpinnerListRoute({List<_i6.PageRouteInfo>? children})
    : super(SpinnerListRoute.name, initialChildren: children);

  static const String name = 'SpinnerListRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.SpinnerListScreen();
    },
  );
}

/// generated route for
/// [_i5.StatsScreen]
class StatsRoute extends _i6.PageRouteInfo<void> {
  const StatsRoute({List<_i6.PageRouteInfo>? children})
    : super(StatsRoute.name, initialChildren: children);

  static const String name = 'StatsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.StatsScreen();
    },
  );
}
