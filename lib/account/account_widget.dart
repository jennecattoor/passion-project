import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountWidget extends StatefulWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  _AccountWidgetState createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 30, 12, 50),
                  child: Text(
                    'Account',
                    style: FlutterFlowTheme.of(context).title1,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 160, 12, 12),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Wachtwoord veranderen',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 40,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'SFPro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  useGoogleFonts: false,
                                ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                        child: FFButtonWidget(
                          onPressed: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            await signOut();

                            context.goNamedAuth('Login', mounted);
                          },
                          text: 'Log uit',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 40,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'SFPro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  useGoogleFonts: false,
                                ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
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
