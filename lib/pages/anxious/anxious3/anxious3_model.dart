import '/flutter_flow/flutter_flow_util.dart';
import 'anxious3_widget.dart' show Anxious3Widget;
import 'package:flutter/material.dart';

class Anxious3Model extends FlutterFlowModel<Anxious3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
