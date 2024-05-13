import '/flutter_flow/flutter_flow_util.dart';
import 'angry5_widget.dart' show Angry5Widget;
import 'package:flutter/material.dart';

class Angry5Model extends FlutterFlowModel<Angry5Widget> {
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
