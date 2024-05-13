import '/flutter_flow/flutter_flow_util.dart';
import 'anxioustask_widget.dart' show AnxioustaskWidget;
import 'package:flutter/material.dart';

class AnxioustaskModel extends FlutterFlowModel<AnxioustaskWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
