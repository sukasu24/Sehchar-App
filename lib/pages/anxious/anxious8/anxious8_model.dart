import '/flutter_flow/flutter_flow_util.dart';
import 'anxious8_widget.dart' show Anxious8Widget;
import 'package:flutter/material.dart';

class Anxious8Model extends FlutterFlowModel<Anxious8Widget> {
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
