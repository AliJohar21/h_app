import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'delete_account_page_unified_model.dart';
export 'delete_account_page_unified_model.dart';

class DeleteAccountPageUnifiedWidget extends StatefulWidget {
  const DeleteAccountPageUnifiedWidget({super.key});

  @override
  State<DeleteAccountPageUnifiedWidget> createState() =>
      _DeleteAccountPageUnifiedWidgetState();
}

class _DeleteAccountPageUnifiedWidgetState
    extends State<DeleteAccountPageUnifiedWidget> {
  late DeleteAccountPageUnifiedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteAccountPageUnifiedModel());

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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: 399.0,
                height: 910.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/Login_Page.png',
                    ).image,
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(-1.03, -0.79),
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
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.18, -0.9),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'xx5u4uzn' /* Delete Account */,
                  ),
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, -0.7),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'qe72bk5q' /* Are you sure you want to disab... */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.1, -0.48),
              child: FFButtonWidget(
                onPressed: () async {
                  await authManager.deleteUser(context);

                  context.goNamedAuth('ClockInOutPage', context.mounted);
                },
                text: FFLocalizations.of(context).getText(
                  'bsg3ypby' /* Delete  Account */,
                ),
                options: FFButtonOptions(
                  width: 250.0,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF1A731A),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 2.0,
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.11, -0.32),
              child: FFButtonWidget(
                onPressed: () async {
                  context.safePop();
                },
                text: FFLocalizations.of(context).getText(
                  'hlx8hgat' /* Cancel */,
                ),
                options: FFButtonOptions(
                  width: 250.0,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                  elevation: 2.0,
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.04, -0.86),
              child: FlutterFlowIconButton(
                borderColor: Color(0x004B986C),
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 61.0,
                fillColor: Color(0x004B986C),
                icon: Icon(
                  Icons.chevron_left,
                  color: Color(0xFF020202),
                  size: 44.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
