import '/flutter_flow/flutter_flow_util.dart';
import 'angry9_widget.dart' show Angry9Widget;
import 'package:flutter/material.dart';

class Angry9Model extends FlutterFlowModel<Angry9Widget> {
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
