import '/flutter_flow/flutter_flow_util.dart';
import 'angry2_widget.dart' show Angry2Widget;
import 'package:flutter/material.dart';

class Angry2Model extends FlutterFlowModel<Angry2Widget> {
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
