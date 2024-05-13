import '/flutter_flow/flutter_flow_util.dart';
import 'angry8_widget.dart' show Angry8Widget;
import 'package:flutter/material.dart';

class Angry8Model extends FlutterFlowModel<Angry8Widget> {
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
