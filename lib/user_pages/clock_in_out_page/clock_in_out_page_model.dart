import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'clock_in_out_page_widget.dart' show ClockInOutPageWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class ClockInOutPageModel extends FlutterFlowModel<ClockInOutPageWidget> {
  ///  Local state fields for this page.

  Color? user = Color(4279923482);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(0, milliSecond: false);
  // FlutterFlowTimerController timerController =
  //     FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UDetailsRecord? uIDQueryResult;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TimesheetRecord? clockInRecord;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    // timerController.dispose();
  }
}
