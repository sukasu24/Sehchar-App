import '/flutter_flow/flutter_flow_util.dart';
import 'enterypage_widget.dart' show EnterypageWidget;
import 'package:flutter/material.dart';

class EnterypageModel extends FlutterFlowModel<EnterypageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
