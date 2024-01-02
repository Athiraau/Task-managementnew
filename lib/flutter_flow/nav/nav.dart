import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => RequesthandlerCopyWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => RequesthandlerCopyWidget(),
          routes: [
            FFRoute(
              name: 'TASKDEVIATION_Request',
              path: 'tASKDEVIATIONRequest',
              builder: (context, params) => TASKDEVIATIONRequestWidget(
                taskid: params.getParam('taskid', ParamType.JSON),
              ),
            ),
            FFRoute(
              name: 'DASHBOARD',
              path: 'dashboard',
              builder: (context, params) => DashboardWidget(),
            ),
            FFRoute(
              name: 'DEVELOPER_UPDATION',
              path: 'developerUpdation',
              builder: (context, params) => DeveloperUpdationWidget(
                taskid: params.getParam('taskid', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'APPROVALDetailedView',
              path: 'aPPROVALDetailedView',
              builder: (context, params) => APPROVALDetailedViewWidget(
                taskID: params.getParam('taskID', ParamType.JSON),
              ),
            ),
            FFRoute(
              name: 'TASKDEVIATION_APPROVAL_detail',
              path: 'tASKDEVIATIONAPPROVALDetail',
              builder: (context, params) => TASKDEVIATIONAPPROVALDetailWidget(
                taskid: params.getParam('taskid', ParamType.JSON),
              ),
            ),
            FFRoute(
              name: 'FeedbackApprovalDetailed',
              path: 'feedbackApprovalDetailed',
              builder: (context, params) => FeedbackApprovalDetailedWidget(
                taskID: params.getParam('taskID', ParamType.JSON),
              ),
            ),
            FFRoute(
              name: 'REPORT',
              path: 'report',
              builder: (context, params) => ReportWidget(),
            ),
            FFRoute(
              name: 'CREATION',
              path: 'creation',
              builder: (context, params) => CreationWidget(),
            ),
            FFRoute(
              name: 'SearchResult',
              path: 'searchResult',
              builder: (context, params) => SearchResultWidget(
                taskid: params.getParam('taskid', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Approval_list2',
              path: 'approvalList2',
              builder: (context, params) => ApprovalList2Widget(),
            ),
            FFRoute(
              name: 'Dev_updation2',
              path: 'devUpdation2',
              builder: (context, params) => DevUpdation2Widget(),
            ),
            FFRoute(
              name: 'REPORTDetails',
              path: 'rEPORTDetails',
              builder: (context, params) => REPORTDetailsWidget(),
            ),
            FFRoute(
              name: 'requesthandler',
              path: 'requesthandler',
              builder: (context, params) => RequesthandlerWidget(
                session: params.getParam('session', ParamType.String),
                token: params.getParam('token', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'TaskDevAppro_list2',
              path: 'taskDevApproList2',
              builder: (context, params) => TaskDevApproList2Widget(),
            ),
            FFRoute(
              name: 'FeedbackApprovalList2',
              path: 'feedbackApprovalList2',
              builder: (context, params) => FeedbackApprovalList2Widget(),
            ),
            FFRoute(
              name: 'taskDevReqstLIST',
              path: 'taskDevReqstLIST',
              builder: (context, params) => TaskDevReqstLISTWidget(),
            ),
            FFRoute(
              name: 'LOGOUT',
              path: 'logout',
              builder: (context, params) => LogoutWidget(),
            ),
            FFRoute(
              name: 'requesthandlerCopy',
              path: 'requesthandlerCopy',
              builder: (context, params) => RequesthandlerCopyWidget(
                session: params.getParam('session', ParamType.String),
                token: params.getParam('token', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'newdemo',
              path: 'newdemo',
              builder: (context, params) => NewdemoWidget(),
            ),
            FFRoute(
              name: 'testpage',
              path: 'testpage',
              builder: (context, params) => TestpageWidget(
                taskID: params.getParam('taskID', ParamType.JSON),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
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

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
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
      (state.extraMap.length == 1 &&
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
    ParamType type, [
    bool isList = false,
  ]) {
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
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
