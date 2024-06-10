import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
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
          appStateNotifier.loggedIn ? const RedirectWidget() : const HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const RedirectWidget() : const HomePageWidget(),
          routes: [
            FFRoute(
              name: 'homePage',
              path: 'homePage',
              builder: (context, params) => const HomePageWidget(),
            ),
            FFRoute(
              name: 'personalMarketing',
              path: 'personalMarketing',
              builder: (context, params) => const PersonalMarketingWidget(),
            ),
            FFRoute(
              name: 'CriarConta',
              path: 'criarConta',
              builder: (context, params) => CriarContaWidget(
                isTreinador: params.getParam(
                  'isTreinador',
                  ParamType.bool,
                ),
                isAluno: params.getParam(
                  'isAluno',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: 'LoginPage',
              path: 'loginPage',
              builder: (context, params) => const LoginPageWidget(),
            ),
            FFRoute(
              name: 'PaginaInicial',
              path: 'paginaInicial',
              asyncParams: {
                'user': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => PaginaInicialWidget(
                user: params.getParam(
                  'user',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: 'TermosDeEula',
              path: 'termosDeEula',
              builder: (context, params) => const TermosDeEulaWidget(),
            ),
            FFRoute(
              name: 'TermosDePrivacidade',
              path: 'termosDePrivacidade',
              builder: (context, params) => const TermosDePrivacidadeWidget(),
            ),
            FFRoute(
              name: 'Messages',
              path: 'messages',
              requireAuth: true,
              builder: (context, params) => const MessagesWidget(),
            ),
            FFRoute(
              name: 'chat',
              path: 'chat',
              asyncParams: {
                'chatUser': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => ChatWidget(
                chatUser: params.getParam(
                  'chatUser',
                  ParamType.Document,
                ),
                chatRef: params.getParam(
                  'chatRef',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['chats'],
                ),
              ),
            ),
            FFRoute(
              name: 'ChatPage',
              path: 'chatPage',
              requireAuth: true,
              builder: (context, params) => const ChatPageWidget(),
            ),
            FFRoute(
              name: 'criarContaEndereco',
              path: 'criarContaEndereco',
              builder: (context, params) => const CriarContaEnderecoWidget(),
            ),
            FFRoute(
              name: 'redirect',
              path: 'redirect',
              builder: (context, params) => const RedirectWidget(),
            ),
            FFRoute(
              name: 'praticanteMarketingAluno',
              path: 'praticanteMarketingAluno',
              builder: (context, params) => const PraticanteMarketingAlunoWidget(),
            ),
            FFRoute(
              name: 'assinaturaAluno',
              path: 'assinaturaAluno',
              builder: (context, params) => const AssinaturaAlunoWidget(),
            ),
            FFRoute(
              name: 'especialidadesPersonal',
              path: 'especialidadesPersonal',
              builder: (context, params) => const EspecialidadesPersonalWidget(),
            ),
            FFRoute(
              name: 'newPost',
              path: 'newPost',
              builder: (context, params) => const NewPostWidget(),
            ),
            FFRoute(
              name: 'meuPerfil',
              path: 'meuPerfil',
              builder: (context, params) => const MeuPerfilWidget(),
            ),
            FFRoute(
              name: 'seguidores',
              path: 'seguidores',
              builder: (context, params) => SeguidoresWidget(
                seguidores: params.getParam(
                  'seguidores',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: 'seguindo',
              path: 'seguindo',
              builder: (context, params) => SeguindoWidget(
                seguidores: params.getParam(
                  'seguidores',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: 'config',
              path: 'config',
              builder: (context, params) => const ConfigWidget(),
            ),
            FFRoute(
              name: 'perfilUser',
              path: 'perfilUser',
              builder: (context, params) => PerfilUserWidget(
                usuario: params.getParam(
                  'usuario',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: 'seguidoresUser',
              path: 'seguidoresUser',
              builder: (context, params) => SeguidoresUserWidget(
                seguidores: params.getParam(
                  'seguidores',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: 'seguindoUser',
              path: 'seguindoUser',
              builder: (context, params) => SeguindoUserWidget(
                seguindo: params.getParam(
                  'seguindo',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: 'notifications',
              path: 'notifications',
              builder: (context, params) => const NotificationsWidget(),
            ),
            FFRoute(
              name: 'montarTreino',
              path: 'montarTreino',
              builder: (context, params) => const MontarTreinoWidget(),
            ),
            FFRoute(
              name: 'montarTreino2',
              path: 'montarTreino2',
              builder: (context, params) => MontarTreino2Widget(
                treinoId: params.getParam(
                  'treinoId',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['treinos'],
                ),
              ),
            ),
            FFRoute(
              name: 'treino',
              path: 'treino',
              builder: (context, params) => TreinoWidget(
                treinoId: params.getParam(
                  'treinoId',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['treinos'],
                ),
              ),
            ),
            FFRoute(
              name: 'videoTreino',
              path: 'videoTreino',
              builder: (context, params) => VideoTreinoWidget(
                agrupamentoID: params.getParam(
                  'agrupamentoID',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['agrupamentos'],
                ),
                videoID: params.getParam(
                  'videoID',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['video'],
                ),
              ),
            ),
            FFRoute(
              name: 'alunos',
              path: 'alunos',
              builder: (context, params) => const AlunosWidget(),
            ),
            FFRoute(
              name: 'seguindoCopy',
              path: 'seguindoCopy',
              builder: (context, params) => SeguindoCopyWidget(
                seguidores: params.getParam(
                  'seguidores',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: 'avaliar',
              path: 'avaliar',
              builder: (context, params) => const AvaliarWidget(),
            ),
            FFRoute(
              name: 'assessments',
              path: 'assessments',
              builder: (context, params) => const AssessmentsWidget(),
            ),
            FFRoute(
              name: 'TelaDepoisDoPagamento',
              path: 'telaPagamentoSucesso',
              requireAuth: true,
              builder: (context, params) => const TelaDepoisDoPagamentoWidget(),
            ),
            FFRoute(
              name: 'Anamnese',
              path: 'anamnese',
              builder: (context, params) => const AnamneseWidget(),
            ),
            FFRoute(
              name: 'composCorporal',
              path: 'composCorporal',
              builder: (context, params) => const ComposCorporalWidget(),
            ),
            FFRoute(
              name: 'perimetros',
              path: 'perimetros',
              builder: (context, params) => const PerimetrosWidget(),
            ),
            FFRoute(
              name: 'avaliarFotos',
              path: 'avaliarFotos',
              builder: (context, params) => const AvaliarFotosWidget(),
            ),
            FFRoute(
              name: 'verAnamnese',
              path: 'verAnamnese',
              builder: (context, params) => VerAnamneseWidget(
                anamneseID: params.getParam(
                  'anamneseID',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['anamnese'],
                ),
              ),
            ),
            FFRoute(
              name: 'vercomposCorporal',
              path: 'vercomposCorporal',
              builder: (context, params) => VercomposCorporalWidget(
                compCorporalid: params.getParam(
                  'compCorporalid',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['composCorporal'],
                ),
              ),
            ),
            FFRoute(
              name: 'prontidao_fisica',
              path: 'prontidaoFisica',
              builder: (context, params) => const ProntidaoFisicaWidget(),
            ),
            FFRoute(
              name: 'ExcluirConta',
              path: 'excluirConta',
              builder: (context, params) => const ExcluirContaWidget(),
            ),
            FFRoute(
              name: 'verPerimetros',
              path: 'verPerimetros',
              builder: (context, params) => const VerPerimetrosWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
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
    List<String>? collectionNamePath,
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
      collectionNamePath: collectionNamePath,
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
            return '/homePage';
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
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Design_sem_nome_(7)_(1).png',
                    fit: BoxFit.cover,
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
