import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'details25_quiz_page_widget.dart' show Details25QuizPageWidget;
import 'package:flutter/material.dart';

class Details25QuizPageModel extends FlutterFlowModel<Details25QuizPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
