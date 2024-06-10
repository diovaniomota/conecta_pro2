import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'no_information_model.dart';
export 'no_information_model.dart';

class NoInformationWidget extends StatefulWidget {
  const NoInformationWidget({super.key});

  @override
  State<NoInformationWidget> createState() => _NoInformationWidgetState();
}

class _NoInformationWidgetState extends State<NoInformationWidget> {
  late NoInformationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoInformationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sem informações no momento',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Inter',
                color: Colors.white,
                letterSpacing: 0.0,
              ),
        ),
      ],
    );
  }
}
