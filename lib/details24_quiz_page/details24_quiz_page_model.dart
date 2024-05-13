import '/flutter_flow/flutter_flow_util.dart';
import 'details24_quiz_page_widget.dart' show Details24QuizPageWidget;
import 'package:flutter/material.dart';

class Details24QuizPageModel extends FlutterFlowModel<Details24QuizPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Slider widget.
  double? sliderValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
