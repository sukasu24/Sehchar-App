import '/flutter_flow/flutter_flow_util.dart';
import 'angry3_widget.dart' show Angry3Widget;
import 'package:flutter/material.dart';

class Angry3Model extends FlutterFlowModel<Angry3Widget> {
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
