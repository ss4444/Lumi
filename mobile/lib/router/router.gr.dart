// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../feats/auth/screens/login_screen.dart' as _i2;
import '../feats/auth/screens/signup_screen_stage_1.dart' as _i3;
import '../feats/auth/screens/signup_screen_stage_2.dart' as _i4;
import '../feats/init/screen/init_screen.dart' as _i1;
import '../feats/main/screens/create_patient_screen.dart' as _i6;
import '../feats/main/screens/main_screen.dart' as _i5;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    InitScreenRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.InitScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    FirstStageSignupScreenRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.FirstStageSignupScreen(),
      );
    },
    SecondStageSignupScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SecondStageSignupScreenRouteArgs>();
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i4.SecondStageSignupScreen(
          key: args.key,
          email: args.email,
          password: args.password,
        ),
      );
    },
    MainScreenRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i5.MainScreen(),
      );
    },
    CreatePatientScreenRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i6.CreatePatientScreen(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          InitScreenRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          LoginScreenRoute.name,
          path: '/login-screen',
        ),
        _i7.RouteConfig(
          FirstStageSignupScreenRoute.name,
          path: '/first-stage-signup-screen',
        ),
        _i7.RouteConfig(
          SecondStageSignupScreenRoute.name,
          path: '/second-stage-signup-screen',
        ),
        _i7.RouteConfig(
          MainScreenRoute.name,
          path: '/main-screen',
        ),
        _i7.RouteConfig(
          CreatePatientScreenRoute.name,
          path: '/create-patient-screen',
        ),
      ];
}

/// generated route for
/// [_i1.InitScreen]
class InitScreenRoute extends _i7.PageRouteInfo<void> {
  const InitScreenRoute()
      : super(
          InitScreenRoute.name,
          path: '/',
        );

  static const String name = 'InitScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i7.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.FirstStageSignupScreen]
class FirstStageSignupScreenRoute extends _i7.PageRouteInfo<void> {
  const FirstStageSignupScreenRoute()
      : super(
          FirstStageSignupScreenRoute.name,
          path: '/first-stage-signup-screen',
        );

  static const String name = 'FirstStageSignupScreenRoute';
}

/// generated route for
/// [_i4.SecondStageSignupScreen]
class SecondStageSignupScreenRoute
    extends _i7.PageRouteInfo<SecondStageSignupScreenRouteArgs> {
  SecondStageSignupScreenRoute({
    _i8.Key? key,
    required String email,
    required String password,
  }) : super(
          SecondStageSignupScreenRoute.name,
          path: '/second-stage-signup-screen',
          args: SecondStageSignupScreenRouteArgs(
            key: key,
            email: email,
            password: password,
          ),
        );

  static const String name = 'SecondStageSignupScreenRoute';
}

class SecondStageSignupScreenRouteArgs {
  const SecondStageSignupScreenRouteArgs({
    this.key,
    required this.email,
    required this.password,
  });

  final _i8.Key? key;

  final String email;

  final String password;

  @override
  String toString() {
    return 'SecondStageSignupScreenRouteArgs{key: $key, email: $email, password: $password}';
  }
}

/// generated route for
/// [_i5.MainScreen]
class MainScreenRoute extends _i7.PageRouteInfo<void> {
  const MainScreenRoute()
      : super(
          MainScreenRoute.name,
          path: '/main-screen',
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i6.CreatePatientScreen]
class CreatePatientScreenRoute extends _i7.PageRouteInfo<void> {
  const CreatePatientScreenRoute()
      : super(
          CreatePatientScreenRoute.name,
          path: '/create-patient-screen',
        );

  static const String name = 'CreatePatientScreenRoute';
}