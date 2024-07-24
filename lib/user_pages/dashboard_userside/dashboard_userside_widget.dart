import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dashboard_userside_model.dart';
export 'dashboard_userside_model.dart';

class DashboardUsersideWidget extends StatefulWidget {
  const DashboardUsersideWidget({super.key});

  @override
  State<DashboardUsersideWidget> createState() => _DashboardUsersideWidgetState();
}

class _DashboardUsersideWidgetState extends State<DashboardUsersideWidget> with TickerProviderStateMixin {
  late DashboardUsersideModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardUsersideModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.698, 0),
            end: Offset(0, 0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(1.22, -0.9),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 10.0, 500.0),
                  child: Container(
                    width: 375.0,
                    height: 90.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFFDDEADD),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          tablet: false,
                        ))
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 68.0,
                                          height: 68.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x4C4B39EF),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(0xFFF9F9F9),
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(44.0),
                                              child: Image.asset(
                                                'assets/images/depositphotos_115418228-stock-illustration-business-woman-profile-with-red.jpg',
                                                width: 44.0,
                                                height: 44.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                  child: Text(
                                                    FFLocalizations.of(context).getText(
                                                      's92a3q60' /* Maria Nader */,
                                                    ),
                                                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                          fontSize: 26.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context).getText(
                                                    '80tq63b9' /* IT Multimedia */,
                                                  ),
                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight: FontWeight.normal,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 43.0,
                                          icon: Icon(
                                            Icons.edit_square,
                                            color: FlutterFlowTheme.of(context).primaryText,
                                            size: 30.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(35.0, 20.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'qhwpkzn6' /* Weekly Attendance */,
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                    child: FlutterFlowDropDown<String>(
                                      controller: _model.dropDownValueController1 ??= FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          '5vd23du4' /* Week 1 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'grgaduei' /* Week 2 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2k8n6b9w' /* Week 3 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'to6w7k33' /* Week 4 */,
                                        )
                                      ],
                                      onChanged: (val) => setState(() => _model.dropDownValue1 = val),
                                      width: 113.0,
                                      height: 56.0,
                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: FFLocalizations.of(context).getText(
                                        'qxcs7mlb' /* Week */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context).secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context).alternate,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                    child: FlutterFlowDropDown<String>(
                                      controller: _model.dropDownValueController2 ??= FormFieldController<String>(null),
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'nvwkds50' /* January */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2twr15o6' /* February */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'pf8mbdt5' /* March */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '4vxzazft' /* April */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'lskn1ji8' /* May */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'i9gkwrxi' /* June */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'bpu9fjk9' /* July */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '9negp4up' /* August */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ovd8hd0o' /* September */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ni12ezml' /* October */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '5xtr9pt1' /* November */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '8ylgkphe' /* December */,
                                        )
                                      ],
                                      onChanged: (val) => setState(() => _model.dropDownValue2 = val),
                                      width: 111.0,
                                      height: 56.0,
                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: FFLocalizations.of(context).getText(
                                        '5ugia3mg' /* Month  */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context).secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context).alternate,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            height: 200.0,
                            child: FlutterFlowBarChart(
                              barData: [
                                FFBarChartData(
                                  yData: List.generate(random_data.randomInteger(5, 5), (index) => random_data.randomInteger(0, 10)),
                                  color: FlutterFlowTheme.of(context).primary,
                                )
                              ],
                              xLabels: List.generate(random_data.randomInteger(5, 5), (index) => random_data.randomInteger(0, 1000)).map((e) => e.toString()).toList(),
                              barWidth: 25.0,
                              barBorderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                              groupSpace: 3.0,
                              alignment: BarChartAlignment.spaceAround,
                              chartStylingInfo: ChartStylingInfo(
                                enableTooltip: true,
                                backgroundColor: Colors.white,
                                borderWidth: 1.0,
                              ),
                              axisBounds: AxisBounds(
                                minY: 1.0,
                                maxY: 21.0,
                              ),
                              xAxisLabelInfo: AxisLabelInfo(
                                title: FFLocalizations.of(context).getText(
                                  '5yj216e4' /* Days */,
                                ),
                                titleTextStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              yAxisLabelInfo: AxisLabelInfo(
                                title: FFLocalizations.of(context).getText(
                                  '107vo0ri' /* Hours */,
                                ),
                                titleTextStyle: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                          child: Container(
                            width: 500.0,
                            height: 130.0,
                            decoration: BoxDecoration(),
                            child: Container(
                              width: 100.0,
                              height: 112.0,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                      child: Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                        ),
                                        alignment: AlignmentDirectional(-1.0, 0.0),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(-0.32, -0.66),
                                              child: Container(
                                                width: 70.0,
                                                height: 70.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(context).primary,
                                                  borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(50.0),
                                                    bottomRight: Radius.circular(50.0),
                                                    topLeft: Radius.circular(50.0),
                                                    topRight: Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context).getText(
                                                      'to9fbi0h' /* 2 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(0.01, 1.14),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context).getText(
                                                    'zscczuwd' /* Present */,
                                                  ),
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontFamily: 'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.39, -0.16),
                                    child: Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(1.44, -1.63),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                              child: Container(
                                                width: 70.0,
                                                height: 70.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFECCF69),
                                                  borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(50.0),
                                                    bottomRight: Radius.circular(50.0),
                                                    topLeft: Radius.circular(50.0),
                                                    topRight: Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context).getText(
                                                      'jvo95egr' /* 1 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(0.23, 1.21),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context).getText(
                                                  'smlu1f7e' /* Late */,
                                                ),
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontFamily: 'Plus Jakarta Sans',
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.3, -0.33),
                                    child: Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                      ),
                                      alignment: AlignmentDirectional(0.0, -1.0),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(2.59, -0.46),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                              child: Container(
                                                width: 70.0,
                                                height: 70.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFF3434),
                                                  borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(50.0),
                                                    bottomRight: Radius.circular(50.0),
                                                    topLeft: Radius.circular(50.0),
                                                    topRight: Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context).getText(
                                                      'myqerj5g' /* 0 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.14, -0.56),
                                    child: Padding(
                                      padding: EdgeInsets.all(24.0),
                                      child: CircularPercentIndicator(
                                        percent: 0.5,
                                        radius: 40.0,
                                        lineWidth: 8.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor: FlutterFlowTheme.of(context).primary,
                                        backgroundColor: FlutterFlowTheme.of(context).accent4,
                                        center: Text(
                                          FFLocalizations.of(context).getText(
                                            '7tiklmw2' /* Hours  */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                fontFamily: 'Urbanist',
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.36, 0.8),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'yptxb4g2' /* Absent */,
                                        ),
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        FlutterFlowCalendar(
                                          color: FlutterFlowTheme.of(context).primary,
                                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                                          weekFormat: false,
                                          weekStartsMonday: false,
                                          rowHeight: 49.0,
                                          onChange: (DateTimeRange? newSelectedDate) {
                                            setState(() => _model.calendarSelectedDay = newSelectedDate);
                                          },
                                          titleStyle: FlutterFlowTheme.of(context).headlineSmall.override(
                                                fontFamily: 'Urbanist',
                                                letterSpacing: 0.0,
                                              ),
                                          dayOfWeekStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                letterSpacing: 0.0,
                                              ),
                                          dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                letterSpacing: 0.0,
                                              ),
                                          selectedDateStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                letterSpacing: 0.0,
                                              ),
                                          inactiveDateStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                letterSpacing: 0.0,
                                              ),
                                          locale: FFLocalizations.of(context).languageCode,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                          child: Container(
                            width: 500.0,
                            height: 130.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                      child: Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                        ),
                                        alignment: AlignmentDirectional(-1.0, 0.0),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(0.0, 0.0),
                                              child: Container(
                                                width: 70.0,
                                                height: 70.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(context).primary,
                                                  borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(50.0),
                                                    bottomRight: Radius.circular(50.0),
                                                    topLeft: Radius.circular(50.0),
                                                    topRight: Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context).getText(
                                                      'smvt7rcb' /* 2 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(0.01, 1.14),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context).getText(
                                                    'dh0bu2ox' /* Present */,
                                                  ),
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontFamily: 'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.39, -0.16),
                                    child: Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(-0.37, -0.06),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                              child: Container(
                                                width: 70.0,
                                                height: 70.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFECCF69),
                                                  borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(50.0),
                                                    bottomRight: Radius.circular(50.0),
                                                    topLeft: Radius.circular(50.0),
                                                    topRight: Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context).getText(
                                                      '5wia8zph' /* 1 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(-0.04, 1.32),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context).getText(
                                                  'bn36jow3' /* Late */,
                                                ),
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontFamily: 'Plus Jakarta Sans',
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.3, -0.33),
                                    child: Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                      ),
                                      alignment: AlignmentDirectional(0.0, -1.0),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                              child: Container(
                                                width: 70.0,
                                                height: 70.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFF3434),
                                                  borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(50.0),
                                                    bottomRight: Radius.circular(50.0),
                                                    topLeft: Radius.circular(50.0),
                                                    topRight: Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context).getText(
                                                      'bm7i9ia0' /* 0 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(-0.06, 1.19),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context).getText(
                                                  'qu51hedg' /* Absent */,
                                                ),
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontFamily: 'Plus Jakarta Sans',
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(24.0),
                                      child: CircularPercentIndicator(
                                        percent: 0.5,
                                        radius: 40.0,
                                        lineWidth: 8.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor: FlutterFlowTheme.of(context).primary,
                                        backgroundColor: FlutterFlowTheme.of(context).accent4,
                                        center: Text(
                                          FFLocalizations.of(context).getText(
                                            'tlibnk5s' /* Hours  */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                fontFamily: 'Urbanist',
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
