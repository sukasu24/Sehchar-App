import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'gender_widget.dart' show GenderWidget;
import 'package:flutter/material.dart';

class GenderModel extends FlutterFlowModel<GenderWidget> {
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
