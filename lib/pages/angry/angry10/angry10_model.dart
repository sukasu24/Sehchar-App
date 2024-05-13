import '/flutter_flow/flutter_flow_util.dart';
import 'angry10_widget.dart' show Angry10Widget;
import 'package:flutter/material.dart';

class Angry10Model extends FlutterFlowModel<Angry10Widget> {
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
