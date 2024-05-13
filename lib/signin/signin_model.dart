import '/flutter_flow/flutter_flow_util.dart';
import 'signin_widget.dart' show SigninWidget;
import 'package:flutter/material.dart';

class SigninModel extends FlutterFlowModel<SigninWidget> {
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
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();

    textFieldFocusNode2?.dispose();
  }
}
