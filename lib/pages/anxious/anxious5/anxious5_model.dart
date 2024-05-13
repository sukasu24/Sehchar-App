import '/flutter_flow/flutter_flow_util.dart';
import 'anxious5_widget.dart' show Anxious5Widget;
import 'package:flutter/material.dart';

class Anxious5Model extends FlutterFlowModel<Anxious5Widget> {
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
