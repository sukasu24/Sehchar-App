import '/flutter_flow/flutter_flow_util.dart';
import 'angry6_widget.dart' show Angry6Widget;
import 'package:flutter/material.dart';

class Angry6Model extends FlutterFlowModel<Angry6Widget> {
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
