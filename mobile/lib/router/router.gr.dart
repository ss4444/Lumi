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
import 'dart:io' as _i17;

import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

import '../feats/auth/screens/login_screen.dart' as _i2;
import '../feats/auth/screens/signup_screen_stage_1.dart' as _i3;
import '../feats/auth/screens/signup_screen_stage_2.dart' as _i4;
import '../feats/diagnosis/entities/prediction/prediction.dart' as _i18;
import '../feats/diagnosis/screens/analyzes/analyzes_decoding_results_screen.dart'
    as _i13;
import '../feats/diagnosis/screens/analyzes/analyzes_decoding_screen.dart'
    as _i9;
import '../feats/diagnosis/screens/brain_tumors_screen.dart' as _i11;
import '../feats/diagnosis/screens/kidney/kidney_diseases_results_screen.dart'
    as _i12;
import '../feats/diagnosis/screens/kidney/kidney_diseases_screen.dart' as _i8;
import '../feats/diagnosis/screens/skin/skin_cancer_results_screen.dart'
    as _i14;
import '../feats/diagnosis/screens/skin/skin_cancer_screen.dart' as _i10;
import '../feats/init/screen/init_screen.dart' as _i1;
import '../feats/main/screens/create_patient_screen.dart' as _i6;
import '../feats/main/screens/main_screen.dart' as _i5;
import '../feats/main/screens/patient_detail_screen.dart' as _i7;

class AppRouter extends _i15.RootStackRouter {
  AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    InitScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.InitScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    FirstStageSignupScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.FirstStageSignupScreen(),
      );
    },
    SecondStageSignupScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SecondStageSignupScreenRouteArgs>();
      return _i15.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i4.SecondStageSignupScreen(
          key: args.key,
          username: args.username,
          password: args.password,
        ),
      );
    },
    MainScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i5.MainScreen(),
      );
    },
    CreatePatientScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i6.CreatePatientScreen(),
      );
    },
    PatientDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PatientDetailScreenRouteArgs>();
      return _i15.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i7.PatientDetailScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    KidneyDiseasesScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i8.KidneyDiseasesScreen(),
      );
    },
    AnalyzesDecodingScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i9.AnalyzesDecodingScreen(),
      );
    },
    SkinCancerScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i10.SkinCancerScreen(),
      );
    },
    BrainTumorsScreenRoute.name: (routeData) {
      return _i15.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i11.BrainTumorsScreen(),
      );
    },
    KidneyDiseasesResultsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<KidneyDiseasesResultsScreenRouteArgs>();
      return _i15.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i12.KidneyDiseasesResultsScreen(
          key: args.key,
          image: args.image,
          predictions: args.predictions,
        ),
      );
    },
    DecipherAnalysesResultsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DecipherAnalysesResultsScreenRouteArgs>();
      return _i15.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i13.DecipherAnalysesResultsScreen(
          key: args.key,
          predictions: args.predictions,
        ),
      );
    },
    SkinCancerResultsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SkinCancerResultsScreenRouteArgs>();
      return _i15.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i14.SkinCancerResultsScreen(
          key: args.key,
          image: args.image,
          predictions: args.predictions,
        ),
      );
    },
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(
          InitScreenRoute.name,
          path: '/',
        ),
        _i15.RouteConfig(
          LoginScreenRoute.name,
          path: '/login-screen',
        ),
        _i15.RouteConfig(
          FirstStageSignupScreenRoute.name,
          path: '/first-stage-signup-screen',
        ),
        _i15.RouteConfig(
          SecondStageSignupScreenRoute.name,
          path: '/second-stage-signup-screen',
        ),
        _i15.RouteConfig(
          MainScreenRoute.name,
          path: '/main-screen',
        ),
        _i15.RouteConfig(
          CreatePatientScreenRoute.name,
          path: '/create-patient-screen',
        ),
        _i15.RouteConfig(
          PatientDetailScreenRoute.name,
          path: '/patient-detail-screen',
        ),
        _i15.RouteConfig(
          KidneyDiseasesScreenRoute.name,
          path: '/kidney-diseases-screen',
        ),
        _i15.RouteConfig(
          AnalyzesDecodingScreenRoute.name,
          path: '/analyzes-decoding-screen',
        ),
        _i15.RouteConfig(
          SkinCancerScreenRoute.name,
          path: '/skin-cancer-screen',
        ),
        _i15.RouteConfig(
          BrainTumorsScreenRoute.name,
          path: '/brain-tumors-screen',
        ),
        _i15.RouteConfig(
          KidneyDiseasesResultsScreenRoute.name,
          path: '/kidney-diseases-results-screen',
        ),
        _i15.RouteConfig(
          DecipherAnalysesResultsScreenRoute.name,
          path: '/decipher-analyses-results-screen',
        ),
        _i15.RouteConfig(
          SkinCancerResultsScreenRoute.name,
          path: '/skin-cancer-results-screen',
        ),
      ];
}

/// generated route for
/// [_i1.InitScreen]
class InitScreenRoute extends _i15.PageRouteInfo<void> {
  const InitScreenRoute()
      : super(
          InitScreenRoute.name,
          path: '/',
        );

  static const String name = 'InitScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i15.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.FirstStageSignupScreen]
class FirstStageSignupScreenRoute extends _i15.PageRouteInfo<void> {
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
    extends _i15.PageRouteInfo<SecondStageSignupScreenRouteArgs> {
  SecondStageSignupScreenRoute({
    _i16.Key? key,
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

  final _i16.Key? key;

  final String username;

  final String password;

  @override
  String toString() {
    return 'SecondStageSignupScreenRouteArgs{key: $key, username: $username, password: $password}';
  }
}

/// generated route for
/// [_i5.MainScreen]
class MainScreenRoute extends _i15.PageRouteInfo<void> {
  const MainScreenRoute()
      : super(
          MainScreenRoute.name,
          path: '/main-screen',
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i6.CreatePatientScreen]
class CreatePatientScreenRoute extends _i15.PageRouteInfo<void> {
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
    extends _i15.PageRouteInfo<PatientDetailScreenRouteArgs> {
  PatientDetailScreenRoute({
    _i16.Key? key,
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

  final _i16.Key? key;

  final String id;

  @override
  String toString() {
    return 'PatientDetailScreenRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i8.KidneyDiseasesScreen]
class KidneyDiseasesScreenRoute extends _i15.PageRouteInfo<void> {
  const KidneyDiseasesScreenRoute()
      : super(
          KidneyDiseasesScreenRoute.name,
          path: '/kidney-diseases-screen',
        );

  static const String name = 'KidneyDiseasesScreenRoute';
}

/// generated route for
/// [_i9.AnalyzesDecodingScreen]
class AnalyzesDecodingScreenRoute extends _i15.PageRouteInfo<void> {
  const AnalyzesDecodingScreenRoute()
      : super(
          AnalyzesDecodingScreenRoute.name,
          path: '/analyzes-decoding-screen',
        );

  static const String name = 'AnalyzesDecodingScreenRoute';
}

/// generated route for
/// [_i10.SkinCancerScreen]
class SkinCancerScreenRoute extends _i15.PageRouteInfo<void> {
  const SkinCancerScreenRoute()
      : super(
          SkinCancerScreenRoute.name,
          path: '/skin-cancer-screen',
        );

  static const String name = 'SkinCancerScreenRoute';
}

/// generated route for
/// [_i11.BrainTumorsScreen]
class BrainTumorsScreenRoute extends _i15.PageRouteInfo<void> {
  const BrainTumorsScreenRoute()
      : super(
          BrainTumorsScreenRoute.name,
          path: '/brain-tumors-screen',
        );

  static const String name = 'BrainTumorsScreenRoute';
}

/// generated route for
/// [_i12.KidneyDiseasesResultsScreen]
class KidneyDiseasesResultsScreenRoute
    extends _i15.PageRouteInfo<KidneyDiseasesResultsScreenRouteArgs> {
  KidneyDiseasesResultsScreenRoute({
    _i16.Key? key,
    required _i17.File image,
    required List<_i18.Prediction> predictions,
  }) : super(
          KidneyDiseasesResultsScreenRoute.name,
          path: '/kidney-diseases-results-screen',
          args: KidneyDiseasesResultsScreenRouteArgs(
            key: key,
            image: image,
            predictions: predictions,
          ),
        );

  static const String name = 'KidneyDiseasesResultsScreenRoute';
}

class KidneyDiseasesResultsScreenRouteArgs {
  const KidneyDiseasesResultsScreenRouteArgs({
    this.key,
    required this.image,
    required this.predictions,
  });

  final _i16.Key? key;

  final _i17.File image;

  final List<_i18.Prediction> predictions;

  @override
  String toString() {
    return 'KidneyDiseasesResultsScreenRouteArgs{key: $key, image: $image, predictions: $predictions}';
  }
}

/// generated route for
/// [_i13.DecipherAnalysesResultsScreen]
class DecipherAnalysesResultsScreenRoute
    extends _i15.PageRouteInfo<DecipherAnalysesResultsScreenRouteArgs> {
  DecipherAnalysesResultsScreenRoute({
    _i16.Key? key,
    required List<_i18.Prediction> predictions,
  }) : super(
          DecipherAnalysesResultsScreenRoute.name,
          path: '/decipher-analyses-results-screen',
          args: DecipherAnalysesResultsScreenRouteArgs(
            key: key,
            predictions: predictions,
          ),
        );

  static const String name = 'DecipherAnalysesResultsScreenRoute';
}

class DecipherAnalysesResultsScreenRouteArgs {
  const DecipherAnalysesResultsScreenRouteArgs({
    this.key,
    required this.predictions,
  });

  final _i16.Key? key;

  final List<_i18.Prediction> predictions;

  @override
  String toString() {
    return 'DecipherAnalysesResultsScreenRouteArgs{key: $key, predictions: $predictions}';
  }
}

/// generated route for
/// [_i14.SkinCancerResultsScreen]
class SkinCancerResultsScreenRoute
    extends _i15.PageRouteInfo<SkinCancerResultsScreenRouteArgs> {
  SkinCancerResultsScreenRoute({
    _i16.Key? key,
    required _i17.File image,
    required List<_i18.Prediction> predictions,
  }) : super(
          SkinCancerResultsScreenRoute.name,
          path: '/skin-cancer-results-screen',
          args: SkinCancerResultsScreenRouteArgs(
            key: key,
            image: image,
            predictions: predictions,
          ),
        );

  static const String name = 'SkinCancerResultsScreenRoute';
}

class SkinCancerResultsScreenRouteArgs {
  const SkinCancerResultsScreenRouteArgs({
    this.key,
    required this.image,
    required this.predictions,
  });

  final _i16.Key? key;

  final _i17.File image;

  final List<_i18.Prediction> predictions;

  @override
  String toString() {
    return 'SkinCancerResultsScreenRouteArgs{key: $key, image: $image, predictions: $predictions}';
  }
}
