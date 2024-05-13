import '/flutter_flow/flutter_flow_util.dart';
import 'anxious7_widget.dart' show Anxious7Widget;
import 'package:flutter/material.dart';

class Anxious7Model extends FlutterFlowModel<Anxious7Widget> {
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
