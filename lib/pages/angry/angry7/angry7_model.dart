import '/flutter_flow/flutter_flow_util.dart';
import 'angry7_widget.dart' show Angry7Widget;
import 'package:flutter/material.dart';

class Angry7Model extends FlutterFlowModel<Angry7Widget> {
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
