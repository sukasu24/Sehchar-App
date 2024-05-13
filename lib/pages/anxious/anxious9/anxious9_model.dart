import '/flutter_flow/flutter_flow_util.dart';
import 'anxious9_widget.dart' show Anxious9Widget;
import 'package:flutter/material.dart';

class Anxious9Model extends FlutterFlowModel<Anxious9Widget> {
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
