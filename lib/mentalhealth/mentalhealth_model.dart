import '/flutter_flow/flutter_flow_util.dart';
import 'mentalhealth_widget.dart' show MentalhealthWidget;
import 'package:flutter/material.dart';

class MentalhealthModel extends FlutterFlowModel<MentalhealthWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
