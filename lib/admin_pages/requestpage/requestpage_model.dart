import '/flutter_flow/flutter_flow_util.dart';
import 'requestpage_widget.dart' show RequestpageWidget;
import 'package:flutter/material.dart';

class RequestpageModel extends FlutterFlowModel<RequestpageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
