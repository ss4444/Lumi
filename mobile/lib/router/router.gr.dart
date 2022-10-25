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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../feats/auth/screens/login_screen.dart' as _i2;
import '../feats/auth/screens/signup_screen_stage_1.dart' as _i3;
import '../feats/auth/screens/signup_screen_stage_2.dart' as _i4;
import '../feats/diagnosis/screens/analyzes_decoding_screen.dart' as _i9;
import '../feats/diagnosis/screens/brain_tumors_screen.dart' as _i11;
import '../feats/diagnosis/screens/kidney_diseases_screen.dart' as _i8;
import '../feats/diagnosis/screens/skin_cancer_screen.dart' as _i10;
import '../feats/init/screen/init_screen.dart' as _i1;
import '../feats/main/screens/create_patient_screen.dart' as _i6;
import '../feats/main/screens/main_screen.dart' as _i5;
import '../feats/main/screens/patient_detail_screen.dart' as _i7;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    InitScreenRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.InitScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    FirstStageSignupScreenRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.FirstStageSignupScreen(),
      );
    },
    SecondStageSignupScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SecondStageSignupScreenRouteArgs>();
      return _i12.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i4.SecondStageSignupScreen(
          key: args.key,
          username: args.username,
          password: args.password,
        ),
      );
    },
    MainScreenRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i5.MainScreen(),
      );
    },
    CreatePatientScreenRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i6.CreatePatientScreen(),
      );
    },
    PatientDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PatientDetailScreenRouteArgs>();
      return _i12.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i7.PatientDetailScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    KidneyDiseasesScreenRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i8.KidneyDiseasesScreen(),
      );
    },
    AnalyzesDecodingScreenRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i9.AnalyzesDecodingScreen(),
      );
    },
    SkinCancerScreenRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i10.SkinCancerScreen(),
      );
    },
    BrainTumorsScreenRoute.name: (routeData) {
      return _i12.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i11.BrainTumorsScreen(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          InitScreenRoute.name,
          path: '/',
        ),
        _i12.RouteConfig(
          LoginScreenRoute.name,
          path: '/login-screen',
        ),
        _i12.RouteConfig(
          FirstStageSignupScreenRoute.name,
          path: '/first-stage-signup-screen',
        ),
        _i12.RouteConfig(
          SecondStageSignupScreenRoute.name,
          path: '/second-stage-signup-screen',
        ),
        _i12.RouteConfig(
          MainScreenRoute.name,
          path: '/main-screen',
        ),
        _i12.RouteConfig(
          CreatePatientScreenRoute.name,
          path: '/create-patient-screen',
        ),
        _i12.RouteConfig(
          PatientDetailScreenRoute.name,
          path: '/patient-detail-screen',
        ),
        _i12.RouteConfig(
          KidneyDiseasesScreenRoute.name,
          path: '/kidney-diseases-screen',
        ),
        _i12.RouteConfig(
          AnalyzesDecodingScreenRoute.name,
          path: '/analyzes-decoding-screen',
        ),
        _i12.RouteConfig(
          SkinCancerScreenRoute.name,
          path: '/skin-cancer-screen',
        ),
        _i12.RouteConfig(
          BrainTumorsScreenRoute.name,
          path: '/brain-tumors-screen',
        ),
      ];
}

/// generated route for
/// [_i1.InitScreen]
class InitScreenRoute extends _i12.PageRouteInfo<void> {
  const InitScreenRoute()
      : super(
          InitScreenRoute.name,
          path: '/',
        );

  static const String name = 'InitScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i12.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.FirstStageSignupScreen]
class FirstStageSignupScreenRoute extends _i12.PageRouteInfo<void> {
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
    extends _i12.PageRouteInfo<SecondStageSignupScreenRouteArgs> {
  SecondStageSignupScreenRoute({
    _i13.Key? key,
    required String username,
    required String password,
  }) : super(
          SecondStageSignupScreenRoute.name,
          path: '/second-stage-signup-screen',
          args: SecondStageSignupScreenRouteArgs(
            key: key,
            username: username,
            password: password,
          ),
        );

  static const String name = 'SecondStageSignupScreenRoute';
}

class SecondStageSignupScreenRouteArgs {
  const SecondStageSignupScreenRouteArgs({
    this.key,
    required this.username,
    required this.password,
  });

  final _i13.Key? key;

  final String username;

  final String password;

  @override
  String toString() {
    return 'SecondStageSignupScreenRouteArgs{key: $key, username: $username, password: $password}';
  }
}

/// generated route for
/// [_i5.MainScreen]
class MainScreenRoute extends _i12.PageRouteInfo<void> {
  const MainScreenRoute()
      : super(
          MainScreenRoute.name,
          path: '/main-screen',
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i6.CreatePatientScreen]
class CreatePatientScreenRoute extends _i12.PageRouteInfo<void> {
  const CreatePatientScreenRoute()
      : super(
          CreatePatientScreenRoute.name,
          path: '/create-patient-screen',
        );

  static const String name = 'CreatePatientScreenRoute';
}

/// generated route for
/// [_i7.PatientDetailScreen]
class PatientDetailScreenRoute
    extends _i12.PageRouteInfo<PatientDetailScreenRouteArgs> {
  PatientDetailScreenRoute({
    _i13.Key? key,
    required String id,
  }) : super(
          PatientDetailScreenRoute.name,
          path: '/patient-detail-screen',
          args: PatientDetailScreenRouteArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'PatientDetailScreenRoute';
}

class PatientDetailScreenRouteArgs {
  const PatientDetailScreenRouteArgs({
    this.key,
    required this.id,
  });

  final _i13.Key? key;

  final String id;

  @override
  String toString() {
    return 'PatientDetailScreenRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i8.KidneyDiseasesScreen]
class KidneyDiseasesScreenRoute extends _i12.PageRouteInfo<void> {
  const KidneyDiseasesScreenRoute()
      : super(
          KidneyDiseasesScreenRoute.name,
          path: '/kidney-diseases-screen',
        );

  static const String name = 'KidneyDiseasesScreenRoute';
}

/// generated route for
/// [_i9.AnalyzesDecodingScreen]
class AnalyzesDecodingScreenRoute extends _i12.PageRouteInfo<void> {
  const AnalyzesDecodingScreenRoute()
      : super(
          AnalyzesDecodingScreenRoute.name,
          path: '/analyzes-decoding-screen',
        );

  static const String name = 'AnalyzesDecodingScreenRoute';
}

/// generated route for
/// [_i10.SkinCancerScreen]
class SkinCancerScreenRoute extends _i12.PageRouteInfo<void> {
  const SkinCancerScreenRoute()
      : super(
          SkinCancerScreenRoute.name,
          path: '/skin-cancer-screen',
        );

  static const String name = 'SkinCancerScreenRoute';
}

/// generated route for
/// [_i11.BrainTumorsScreen]
class BrainTumorsScreenRoute extends _i12.PageRouteInfo<void> {
  const BrainTumorsScreenRoute()
      : super(
          BrainTumorsScreenRoute.name,
          path: '/brain-tumors-screen',
        );

  static const String name = 'BrainTumorsScreenRoute';
}
