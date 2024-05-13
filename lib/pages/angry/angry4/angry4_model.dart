import '/flutter_flow/flutter_flow_util.dart';
import 'angry4_widget.dart' show Angry4Widget;
import 'package:flutter/material.dart';

class Angry4Model extends FlutterFlowModel<Angry4Widget> {
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
