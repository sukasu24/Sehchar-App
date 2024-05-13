import '/flutter_flow/flutter_flow_util.dart';
import 'depressed10_widget.dart' show Depressed10Widget;
import 'package:flutter/material.dart';

class Depressed10Model extends FlutterFlowModel<Depressed10Widget> {
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
