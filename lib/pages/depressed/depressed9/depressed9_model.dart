import '/flutter_flow/flutter_flow_util.dart';
import 'depressed9_widget.dart' show Depressed9Widget;
import 'package:flutter/material.dart';

class Depressed9Model extends FlutterFlowModel<Depressed9Widget> {
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
