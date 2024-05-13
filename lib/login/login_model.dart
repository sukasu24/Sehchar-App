import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  FocusNode? textFieldFocusNode1;
  TextEditingController? emailTextController;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  FocusNode? textFieldFocusNode2;
  TextEditingController? passwordTextController;
  String? textFieldSelectedOption2;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? confirmPasswordTextController;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();

    textFieldFocusNode2?.dispose();

    textFieldFocusNode3?.dispose();
    confirmPasswordTextController?.dispose();
  }
}
