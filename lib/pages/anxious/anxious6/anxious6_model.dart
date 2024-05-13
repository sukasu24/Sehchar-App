import '/flutter_flow/flutter_flow_util.dart';
import 'anxious6_widget.dart' show Anxious6Widget;
import 'package:flutter/material.dart';

class Anxious6Model extends FlutterFlowModel<Anxious6Widget> {
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
