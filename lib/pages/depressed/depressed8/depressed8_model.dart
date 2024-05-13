import '/flutter_flow/flutter_flow_util.dart';
import 'depressed8_widget.dart' show Depressed8Widget;
import 'package:flutter/material.dart';

class Depressed8Model extends FlutterFlowModel<Depressed8Widget> {
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
