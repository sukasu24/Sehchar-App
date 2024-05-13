import '/flutter_flow/flutter_flow_util.dart';
import 'depressed5_widget.dart' show Depressed5Widget;
import 'package:flutter/material.dart';

class Depressed5Model extends FlutterFlowModel<Depressed5Widget> {
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
