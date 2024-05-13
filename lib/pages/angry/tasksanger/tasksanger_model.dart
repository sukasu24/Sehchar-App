import '/flutter_flow/flutter_flow_util.dart';
import 'tasksanger_widget.dart' show TasksangerWidget;
import 'package:flutter/material.dart';

class TasksangerModel extends FlutterFlowModel<TasksangerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
