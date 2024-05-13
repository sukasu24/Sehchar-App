import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const HomeWidget() : const EnterypageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const HomeWidget() : const EnterypageWidget(),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'home',
          path: '/home',
          builder: (context, params) => const HomeWidget(),
        ),
        FFRoute(
          name: 'Enterypage',
          path: '/homeCopy',
          builder: (context, params) => const EnterypageWidget(),
        ),
        FFRoute(
          name: 'Angry1',
          path: '/angry1',
          builder: (context, params) => const Angry1Widget(),
        ),
        FFRoute(
          name: 'Angry2',
          path: '/angry2',
          builder: (context, params) => const Angry2Widget(),
        ),
        FFRoute(
          name: 'Angry3',
          path: '/angry3',
          builder: (context, params) => const Angry3Widget(),
        ),
        FFRoute(
          name: 'Angry7',
          path: '/angry7',
          builder: (context, params) => const Angry7Widget(),
        ),
        FFRoute(
          name: 'Angry4',
          path: '/angry4',
          builder: (context, params) => const Angry4Widget(),
        ),
        FFRoute(
          name: 'Angry5',
          path: '/angry5',
          builder: (context, params) => const Angry5Widget(),
        ),
        FFRoute(
          name: 'Angry6',
          path: '/angry6',
          builder: (context, params) => const Angry6Widget(),
        ),
        FFRoute(
          name: 'Angry8',
          path: '/angry8',
          builder: (context, params) => const Angry8Widget(),
        ),
        FFRoute(
          name: 'Angry10',
          path: '/angry10',
          builder: (context, params) => const Angry10Widget(),
        ),
        FFRoute(
          name: 'Angry9',
          path: '/angry9',
          builder: (context, params) => const Angry9Widget(),
        ),
        FFRoute(
          name: 'Tasksanger',
          path: '/tasksanger',
          builder: (context, params) => const TasksangerWidget(),
        ),
        FFRoute(
          name: 'Anxious1',
          path: '/anxious1',
          builder: (context, params) => const Anxious1Widget(),
        ),
        FFRoute(
          name: 'Anxious2',
          path: '/anxious2',
          builder: (context, params) => const Anxious2Widget(),
        ),
        FFRoute(
          name: 'Anxious3',
          path: '/anxious3',
          builder: (context, params) => const Anxious3Widget(),
        ),
        FFRoute(
          name: 'Anxious4',
          path: '/anxious4',
          builder: (context, params) => const Anxious4Widget(),
        ),
        FFRoute(
          name: 'Anxious5',
          path: '/anxious5',
          builder: (context, params) => const Anxious5Widget(),
        ),
        FFRoute(
          name: 'Anxious6',
          path: '/anxious6',
          builder: (context, params) => const Anxious6Widget(),
        ),
        FFRoute(
          name: 'Anxious7',
          path: '/anxious7',
          builder: (context, params) => const Anxious7Widget(),
        ),
        FFRoute(
          name: 'Anxious8',
          path: '/anxious8',
          builder: (context, params) => const Anxious8Widget(),
        ),
        FFRoute(
          name: 'Anxious9',
          path: '/anxious9',
          builder: (context, params) => const Anxious9Widget(),
        ),
        FFRoute(
          name: 'Anxious10',
          path: '/anxious10',
          builder: (context, params) => const Anxious10Widget(),
        ),
        FFRoute(
          name: 'Anxioustask',
          path: '/anxioustask',
          builder: (context, params) => const AnxioustaskWidget(),
        ),
        FFRoute(
          name: 'depressed1',
          path: '/Anxious2Copy',
          builder: (context, params) => const Depressed1Widget(),
        ),
        FFRoute(
          name: 'depressed2',
          path: '/depressed2',
          builder: (context, params) => const Depressed2Widget(),
        ),
        FFRoute(
          name: 'depressed3',
          path: '/depressed3',
          builder: (context, params) => const Depressed3Widget(),
        ),
        FFRoute(
          name: 'depressed4',
          path: '/depressed4',
          builder: (context, params) => const Depressed4Widget(),
        ),
        FFRoute(
          name: 'depressed5',
          path: '/depressed5',
          builder: (context, params) => const Depressed5Widget(),
        ),
        FFRoute(
          name: 'depressed6',
          path: '/depressed6',
          builder: (context, params) => const Depressed6Widget(),
        ),
        FFRoute(
          name: 'depressed7',
          path: '/Depressed7',
          builder: (context, params) => const Depressed7Widget(),
        ),
        FFRoute(
          name: 'depressed8',
          path: '/depressed8',
          builder: (context, params) => const Depressed8Widget(),
        ),
        FFRoute(
          name: 'depressed9',
          path: '/Depressed9',
          builder: (context, params) => const Depressed9Widget(),
        ),
        FFRoute(
          name: 'depressed10',
          path: '/Depressed10',
          builder: (context, params) => const Depressed10Widget(),
        ),
        FFRoute(
          name: 'taskdepress',
          path: '/taskdepress',
          builder: (context, params) => const TaskdepressWidget(),
        ),
        FFRoute(
          name: 'Anxioustask1',
          path: '/anxioustask1',
          builder: (context, params) => const Anxioustask1Widget(),
        ),
        FFRoute(
          name: 'Anxioustask2',
          path: '/anxioustask2',
          builder: (context, params) => const Anxioustask2Widget(),
        ),
        FFRoute(
          name: 'Anxioustask3',
          path: '/anxioustask3',
          builder: (context, params) => const Anxioustask3Widget(),
        ),
        FFRoute(
          name: 'Anxioustask4',
          path: '/anxioustask4',
          builder: (context, params) => const Anxioustask4Widget(),
        ),
        FFRoute(
          name: 'Anxioustask5',
          path: '/anxioustask5',
          builder: (context, params) => const Anxioustask5Widget(),
        ),
        FFRoute(
          name: 'Details24QuizPage',
          path: '/details24QuizPage',
          builder: (context, params) => const Details24QuizPageWidget(),
        ),
        FFRoute(
          name: 'Details25QuizPage',
          path: '/details25QuizPage',
          builder: (context, params) => const Details25QuizPageWidget(),
        ),
        FFRoute(
          name: 'Gender',
          path: '/gender',
          builder: (context, params) => const GenderWidget(),
        ),
        FFRoute(
          name: 'Task',
          path: '/task',
          builder: (context, params) => const TaskWidget(),
        ),
        FFRoute(
          name: 'Professionalhelp',
          path: '/professionalhelp',
          builder: (context, params) => const ProfessionalhelpWidget(),
        ),
        FFRoute(
          name: 'Tasksanger1',
          path: '/tasksanger1',
          builder: (context, params) => const Tasksanger1Widget(),
        ),
        FFRoute(
          name: 'Tasksanger2',
          path: '/tasksanger2',
          builder: (context, params) => const Tasksanger2Widget(),
        ),
        FFRoute(
          name: 'Tasksanger3',
          path: '/tasksanger3',
          builder: (context, params) => const Tasksanger3Widget(),
        ),
        FFRoute(
          name: 'Tasksanger4',
          path: '/tasksanger4',
          builder: (context, params) => const Tasksanger4Widget(),
        ),
        FFRoute(
          name: 'Tasksanger5',
          path: '/tasksanger5',
          builder: (context, params) => const Tasksanger5Widget(),
        ),
        FFRoute(
          name: 'Taskdepressed1',
          path: '/taskdepressed1',
          builder: (context, params) => const Taskdepressed1Widget(),
        ),
        FFRoute(
          name: 'Taskdepressed2',
          path: '/taskdepressed2',
          builder: (context, params) => const Taskdepressed2Widget(),
        ),
        FFRoute(
          name: 'Taskdepressed3',
          path: '/taskdepressed3',
          builder: (context, params) => const Taskdepressed3Widget(),
        ),
        FFRoute(
          name: 'Taskdepressed5',
          path: '/taskdepressed5',
          builder: (context, params) => const Taskdepressed5Widget(),
        ),
        FFRoute(
          name: 'Taskdepressed4',
          path: '/taskdepressed4',
          builder: (context, params) => const Taskdepressed4Widget(),
        ),
        FFRoute(
          name: 'Mentalhealth',
          path: '/mentalhealth',
          builder: (context, params) => const MentalhealthWidget(),
        ),
        FFRoute(
          name: 'signin',
          path: '/signin',
          builder: (context, params) => const SigninWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/homeCopy';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
