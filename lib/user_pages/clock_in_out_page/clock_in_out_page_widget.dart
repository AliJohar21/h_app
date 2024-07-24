import 'dart:async';

import 'package:geolocator/geolocator.dart';

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'clock_in_out_page_model.dart';
export 'clock_in_out_page_model.dart';

class ClockInOutPageWidget extends StatefulWidget {
  const ClockInOutPageWidget({super.key});

  @override
  State<ClockInOutPageWidget> createState() => _ClockInOutPageWidgetState();
}

class _ClockInOutPageWidgetState extends State<ClockInOutPageWidget>
    with TickerProviderStateMixin {
  late ClockInOutPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  var canClockIn = false;
  var isLoadingLocation = true;
  var locationMessage = "";

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClockInOutPageModel());

    animationsMap.addAll({
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
    checkCurrenLocation();
  }

  @override
  void didUpdateWidget(ClockInOutPageWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    checkCurrenLocation();
  }

  Future checkCurrenLocation() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;

      // Test if location services are enabled.
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Location services are not enabled don't continue
        // accessing the position and request users of the
        // App to enable the location services.
        locationMessage = 'Location services are disabled.';
        return;
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          // Permissions are denied, next time you could try
          // requesting permissions again (this is also where
          // Android's shouldShowRequestPermissionRationale
          // returned true. According to Android guidelines
          // your App should show an explanatory UI now.
          locationMessage = 'Location permissions are denied';
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        // Permissions are denied forever, handle appropriately.
        locationMessage =
            'Location permissions are permanently denied, we cannot request permissions.';
        return;
      }

      // When we reach here, permissions are granted and we can
      // continue accessing the position of the device.
      var currentPosition = await Geolocator.getCurrentPosition();
      //25.334944, 55.376901
      //25.332092, 55.380423
      var checkLat = currentPosition.latitude <= 25.334944 &&
          currentPosition.latitude >= 25.332092;

      var checkLong = currentPosition.longitude <= 55.380423 &&
          currentPosition.longitude >= 55.376901;

      if (checkLat && checkLong) {}
      canClockIn = true;
    } catch (e, s) {
      print(e);
      print(s);
    } finally {
      setState(() {
        isLoadingLocation = false;
      });
    }
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: const Color(0xFF277248),
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              FFLocalizations.of(context).getText(
                'ze0sf9ev' /* Hudoor Clock  */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 36.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/Start_Page.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Login_Page.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/GPS.png',
                width: double.infinity,
                height: 300,
              ),
              if (isLoadingLocation)
                const SizedBox.square(
                  dimension: 40,
                  child: CircularProgressIndicator(),
                ),
              if (locationMessage.isNotEmpty)
                Text(
                  locationMessage,
                  style: const TextStyle(color: Colors.red),
                ),
              if (FFAppState().clockedIn == false && !isLoadingLocation)
                SizedBox(
                  width: 150.0,
                  height: 100.0,
                  child: ElevatedButton(
                    onPressed: !canClockIn
                        ? null
                        : () async {
                            // Query collection to retrieve the current user's document.
                            _model.uIDQueryResult =
                                await queryUDetailsRecordOnce(
                              queryBuilder: (uDetailsRecord) =>
                                  uDetailsRecord.where(
                                'UID',
                                isEqualTo: valueOrDefault<String>(
                                  currentUserUid,
                                  'NULLUID',
                                ),
                              ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);

                            var timesheetRecordReference =
                                TimesheetRecord.createDoc(
                              _model.uIDQueryResult!.reference,
                              id: valueOrDefault<String>(
                                dateTimeFormat(
                                  'y/M/d',
                                  getCurrentTimestamp,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                'NODATESET',
                              ),
                            );
                            await timesheetRecordReference.set(
                              createTimesheetRecordData(
                                clockin: valueOrDefault<String>(
                                  dateTimeFormat(
                                    'y-MM-dd HH:mm:ss',
                                    getCurrentTimestamp,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  'NULL',
                                ),
                              ),
                            );
                            _model.clockInRecord =
                                TimesheetRecord.getDocumentFromData(
                              createTimesheetRecordData(
                                clockin: valueOrDefault<String>(
                                  dateTimeFormat(
                                    'y-MM-dd HH:mm:ss',
                                    getCurrentTimestamp,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  'NULL',
                                ),
                              ),
                              timesheetRecordReference,
                            );
                            FFAppState().clockedIn = true;
                            setState(() {});
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      fixedSize: const Size(150.0, 100.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90),
                      ),
                    ),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '66lg3s78' /* Clock in */,
                      ),
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              if (FFAppState().clockedIn == true && !isLoadingLocation)
                SizedBox(
                  width: 150,
                  height: 100,
                  child: ElevatedButton(
                    onPressed: !canClockIn
                        ? null
                        : () async {
                            FFAppState().clockedIn = false;
                            setState(() {});
                            _model.uIDQueryResult =
                                await queryUDetailsRecordOnce(
                              queryBuilder: (uDetailsRecord) =>
                                  uDetailsRecord.where(
                                'UID',
                                isEqualTo: valueOrDefault<String>(
                                  currentUserUid,
                                  'NULLUID',
                                ),
                              ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);
                            var clockInRecord = await _model
                                .uIDQueryResult?.reference
                                .collection("timesheet")
                                .doc(
                                  dateTimeFormat(
                                    'y/M/d',
                                    getCurrentTimestamp,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                );
                            await clockInRecord!
                                .update(createTimesheetRecordData(
                              clockout: valueOrDefault<String>(
                                dateTimeFormat(
                                  'y-MM-dd HH:mm:ss',
                                  getCurrentTimestamp,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                'NULL',
                              ),
                              totalhours: _model.timerValue,
                            ));
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFDA6E1C),
                      fixedSize: const Size(150.0, 100.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90),
                      ),
                    ),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'bzdzbkh2' /* Clock Out */,
                      ),
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.timer_outlined, size: 40),
                          const SizedBox(width: 10),
                          if (FFAppState().clockedIn)
                            const TimerWidget()
                          else
                            const Text(
                              "00:00:00",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Icon(Icons.location_on, size: 40),
                          const SizedBox(width: 10),
                          if (!isLoadingLocation)
                            Text(
                              "You are ${canClockIn ? "" : "NOT "}at the correct location",
                              style: const TextStyle(fontSize: 16),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  Timer? timer;
  DateTime? clockInTime;

  Future startTimer() async {
    var uIDQueryResult = await queryUDetailsRecordOnce(
      queryBuilder: (uDetailsRecord) => uDetailsRecord.where(
        'UID',
        isEqualTo: valueOrDefault<String>(
          currentUserUid,
          'NULLUID',
        ),
      ),
      singleRecord: true,
    ).then((s) => s.firstOrNull);
    var date = await uIDQueryResult?.reference
        .collection("timesheet")
        .doc(
          dateTimeFormat(
            'y/M/d',
            getCurrentTimestamp,
            locale: FFLocalizations.of(context).languageCode,
          ),
        )
        .get();
    var clockInData = date?.data()?["clockin"];
    if (clockInData != null &&
        clockInData is String &&
        clockInData.isNotEmpty) {
      clockInTime = DateTime.tryParse(clockInData);
    }

    if (clockInTime != null) {
      timer = Timer.periodic(
        const Duration(seconds: 1),
        (timer) {
          setState(() {});
        },
      );
    }
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var currentTime = DateTime.now();
    clockInTime ??= currentTime;

    var time = currentTime.difference(clockInTime!);
    return Text(
      "${(time.inHours).toString().padLeft(2, "0")}:${(time.inMinutes % 60).toString().padLeft(2, "0")}:${(time.inSeconds % 60).toString().padLeft(2, "0")}",
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
