// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:dunno/models/spinner_model.dart' as _i11;
import 'package:dunno/screens/account/account_screen.dart' as _i1;
import 'package:dunno/screens/edit_spinner/edit_spinner_screen.dart' as _i3;
import 'package:dunno/screens/home/home_screen.dart' as _i4;
import 'package:dunno/screens/quick_spin/quick_spin_screen.dart' as _i5;
import 'package:dunno/screens/spinner/spinner_screen.dart' as _i7;
import 'package:dunno/screens/spinner_list/all_spinners_screen.dart' as _i2;
import 'package:dunno/screens/spinner_list/spinner_list_screen.dart' as _i6;
import 'package:dunno/screens/stats/stats_screen.dart' as _i8;
import 'package:flutter/material.dart' as _i10;

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i9.PageRouteInfo<void> {
  const AccountRoute({List<_i9.PageRouteInfo>? children})
    : super(AccountRoute.name, initialChildren: children);

  static const String name = 'AccountRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountScreen();
    },
  );
}

/// generated route for
/// [_i2.AllSpinnersScreen]
class AllSpinnersRoute extends _i9.PageRouteInfo<void> {
  const AllSpinnersRoute({List<_i9.PageRouteInfo>? children})
    : super(AllSpinnersRoute.name, initialChildren: children);

  static const String name = 'AllSpinnersRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.AllSpinnersScreen();
    },
  );
}

/// generated route for
/// [_i3.EditSpinnerScreen]
class EditSpinnerRoute extends _i9.PageRouteInfo<EditSpinnerRouteArgs> {
  EditSpinnerRoute({
    _i10.Key? key,
    String id = "",
    List<_i9.PageRouteInfo>? children,
  }) : super(
         EditSpinnerRoute.name,
         args: EditSpinnerRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'EditSpinnerRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditSpinnerRouteArgs>(
        orElse: () => const EditSpinnerRouteArgs(),
      );
      return _i3.EditSpinnerScreen(key: args.key, id: args.id);
    },
  );
}

class EditSpinnerRouteArgs {
  const EditSpinnerRouteArgs({this.key, this.id = ""});

  final _i10.Key? key;

  final String id;

  @override
  String toString() {
    return 'EditSpinnerRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! EditSpinnerRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i5.QuickSpinScreen]
class QuickSpinRoute extends _i9.PageRouteInfo<void> {
  const QuickSpinRoute({List<_i9.PageRouteInfo>? children})
    : super(QuickSpinRoute.name, initialChildren: children);

  static const String name = 'QuickSpinRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.QuickSpinScreen();
    },
  );
}

/// generated route for
/// [_i6.SpinnerListScreen]
class SpinnerListRoute extends _i9.PageRouteInfo<void> {
  const SpinnerListRoute({List<_i9.PageRouteInfo>? children})
    : super(SpinnerListRoute.name, initialChildren: children);

  static const String name = 'SpinnerListRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.SpinnerListScreen();
    },
  );
}

/// generated route for
/// [_i7.SpinnerScreen]
class SpinnerRoute extends _i9.PageRouteInfo<SpinnerRouteArgs> {
  SpinnerRoute({
    _i10.Key? key,
    required _i11.SpinnerModel spinner,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         SpinnerRoute.name,
         args: SpinnerRouteArgs(key: key, spinner: spinner),
         initialChildren: children,
       );

  static const String name = 'SpinnerRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SpinnerRouteArgs>();
      return _i7.SpinnerScreen(key: args.key, spinner: args.spinner);
    },
  );
}

class SpinnerRouteArgs {
  const SpinnerRouteArgs({this.key, required this.spinner});

  final _i10.Key? key;

  final _i11.SpinnerModel spinner;

  @override
  String toString() {
    return 'SpinnerRouteArgs{key: $key, spinner: $spinner}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SpinnerRouteArgs) return false;
    return key == other.key && spinner == other.spinner;
  }

  @override
  int get hashCode => key.hashCode ^ spinner.hashCode;
}

/// generated route for
/// [_i8.StatsScreen]
class StatsRoute extends _i9.PageRouteInfo<void> {
  const StatsRoute({List<_i9.PageRouteInfo>? children})
    : super(StatsRoute.name, initialChildren: children);

  static const String name = 'StatsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.StatsScreen();
    },
  );
}
