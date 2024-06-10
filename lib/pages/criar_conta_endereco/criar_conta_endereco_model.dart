import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'criar_conta_endereco_widget.dart' show CriarContaEnderecoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CriarContaEnderecoModel
    extends FlutterFlowModel<CriarContaEnderecoWidget> {
  ///  Local state fields for this page.

  String? varLogradouro = ' ';

  String? varBairro = ' ';

  String? varCidade = ' ';

  String? varUF = ' ';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  String? _cepTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (apiBuscarCep)] action in IconButton widget.
  ApiCallResponse? respostaCEP;
  // State field(s) for log widget.
  FocusNode? logFocusNode;
  TextEditingController? logTextController;
  String? Function(BuildContext, String?)? logTextControllerValidator;
  // State field(s) for bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeTextController;
  String? Function(BuildContext, String?)? cidadeTextControllerValidator;
  String? _cidadeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  // State field(s) for uf widget.
  FocusNode? ufFocusNode;
  TextEditingController? ufTextController;
  String? Function(BuildContext, String?)? ufTextControllerValidator;
  String? _ufTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    cepTextControllerValidator = _cepTextControllerValidator;
    cidadeTextControllerValidator = _cidadeTextControllerValidator;
    ufTextControllerValidator = _ufTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cepFocusNode?.dispose();
    cepTextController?.dispose();

    logFocusNode?.dispose();
    logTextController?.dispose();

    bairroFocusNode?.dispose();
    bairroTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();

    cidadeFocusNode?.dispose();
    cidadeTextController?.dispose();

    ufFocusNode?.dispose();
    ufTextController?.dispose();
  }
}
