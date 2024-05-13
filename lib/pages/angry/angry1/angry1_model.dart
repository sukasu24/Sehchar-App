import '/flutter_flow/flutter_flow_util.dart';
import 'angry1_widget.dart' show Angry1Widget;
import 'package:flutter/material.dart';

class Angry1Model extends FlutterFlowModel<Angry1Widget> {
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
