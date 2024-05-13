import '/flutter_flow/flutter_flow_util.dart';
import 'depressed2_widget.dart' show Depressed2Widget;
import 'package:flutter/material.dart';

class Depressed2Model extends FlutterFlowModel<Depressed2Widget> {
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
