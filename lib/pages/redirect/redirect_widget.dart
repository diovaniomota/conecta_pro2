import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'redirect_model.dart';
export 'redirect_model.dart';

class RedirectWidget extends StatefulWidget {
  const RedirectWidget({super.key});

  @override
  State<RedirectWidget> createState() => _RedirectWidgetState();
}

class _RedirectWidgetState extends State<RedirectWidget> {
  late RedirectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RedirectModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault<bool>(currentUserDocument?.isTreinador, false)) {
        if (valueOrDefault<bool>(
            currentUserDocument?.cadastroCompleto, false)) {
          if (valueOrDefault<bool>(currentUserDocument?.ativo, false)) {
            context.pushNamed('PaginaInicial');
          }
        } else {
          context.pushNamed('PaginaInicial');
        }
      } else {
        if (valueOrDefault<bool>(currentUserDocument?.isAluno, false)) {
          if (valueOrDefault<bool>(
              currentUserDocument?.cadastroCompleto, false)) {
            if (valueOrDefault<bool>(currentUserDocument?.ativo, false)) {
              context.pushNamed('PaginaInicial');
            } else {
              context.pushNamed('assinaturaAluno');
            }
          } else {
            context.pushNamed('PaginaInicial');
          }
        } else {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                title: const Text('Usuário não cadastrado'),
                content: const Text('Este usúario não está cadastrado no sistema'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          );

          context.pushNamed('homePage');
        }
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
