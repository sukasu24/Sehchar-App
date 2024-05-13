import '/flutter_flow/flutter_flow_util.dart';
import 'anxious4_widget.dart' show Anxious4Widget;
import 'package:flutter/material.dart';

class Anxious4Model extends FlutterFlowModel<Anxious4Widget> {
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
