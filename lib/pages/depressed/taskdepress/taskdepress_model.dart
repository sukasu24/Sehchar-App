import '/flutter_flow/flutter_flow_util.dart';
import 'taskdepress_widget.dart' show TaskdepressWidget;
import 'package:flutter/material.dart';

class TaskdepressModel extends FlutterFlowModel<TaskdepressWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
