import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'notifications_page_unified_model.dart';
export 'notifications_page_unified_model.dart';

class NotificationsPageUnifiedWidget extends StatefulWidget {
  const NotificationsPageUnifiedWidget({super.key});

  @override
  State<NotificationsPageUnifiedWidget> createState() =>
      _NotificationsPageUnifiedWidgetState();
}

class _NotificationsPageUnifiedWidgetState
    extends State<NotificationsPageUnifiedWidget> {
  late NotificationsPageUnifiedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsPageUnifiedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/bg.png',
                  ).image,
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, -0.83),
            child: Text(
              FFLocalizations.of(context).getText(
                '6qigqkfs' /* Notification */,
              ),
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 36.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, -0.6),
            child: Text(
              FFLocalizations.of(context).getText(
                '5lcc3ro2' /* Choose what notifcations you w... */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, -0.04),
            child: SwitchListTile.adaptive(
              value: _model.switchListTileValue1 ??= true,
              onChanged: (newValue) async {
                setState(() => _model.switchListTileValue1 = newValue!);
              },
              title: Text(
                FFLocalizations.of(context).getText(
                  '8edp1yu5' /* Notify me */,
                ),
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Color(0xFF060606),
                      letterSpacing: 0.0,
                      lineHeight: 2.0,
                    ),
              ),
              subtitle: Text(
                FFLocalizations.of(context).getText(
                  'oygqlayq' /* Tell me when i enter or leave ... */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Color(0xFF8B97A2),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              tileColor: Colors.white,
              activeColor: Color(0xFF83E583),
              activeTrackColor: Color(0xFF1A731A),
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding:
                  EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.32),
            child: SwitchListTile.adaptive(
              value: _model.switchListTileValue2 ??= true,
              onChanged: (newValue) async {
                setState(() => _model.switchListTileValue2 = newValue!);
              },
              title: Text(
                FFLocalizations.of(context).getText(
                  'kx54wzx2' /* Location Services */,
                ),
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF070708),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                      lineHeight: 2.0,
                    ),
              ),
              subtitle: Text(
                FFLocalizations.of(context).getText(
                  'wcgkgydh' /* Allow us to track your locatio... */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF8B97A2),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).primaryBackground,
              activeColor: Color(0xFF83E583),
              activeTrackColor: Color(0xFF1A731A),
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding:
                  EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, -0.37),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
              child: SwitchListTile.adaptive(
                value: _model.switchListTileValue3 ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.switchListTileValue3 = newValue!);
                },
                title: Text(
                  FFLocalizations.of(context).getText(
                    'm9g68958' /* Push Notifications */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF020202),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        lineHeight: 2.0,
                      ),
                ),
                subtitle: Text(
                  FFLocalizations.of(context).getText(
                    'or2hkj3v' /* Receive Push notifications fro... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF8B97A2),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w300,
                      ),
                ),
                tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                activeColor: Color(0xFF83E583),
                activeTrackColor: Color(0xFF1A731A),
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.97, -0.84),
            child: FlutterFlowIconButton(
              borderColor: Color(0x004B986C),
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 61.0,
              fillColor: Color(0x004B986C),
              icon: Icon(
                Icons.chevron_left,
                color: Color(0xFFFBFBFB),
                size: 44.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
