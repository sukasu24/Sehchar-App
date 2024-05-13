import '/flutter_flow/flutter_flow_util.dart';
import 'depressed4_widget.dart' show Depressed4Widget;
import 'package:flutter/material.dart';

class Depressed4Model extends FlutterFlowModel<Depressed4Widget> {
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
