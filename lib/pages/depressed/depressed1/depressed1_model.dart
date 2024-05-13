import '/flutter_flow/flutter_flow_util.dart';
import 'depressed1_widget.dart' show Depressed1Widget;
import 'package:flutter/material.dart';

class Depressed1Model extends FlutterFlowModel<Depressed1Widget> {
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
