import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaveArrangementFormWidget extends StatefulWidget {
  const LeaveArrangementFormWidget({Key? key}) : super(key: key);

  @override
  _LeaveArrangementFormWidgetState createState() =>
      _LeaveArrangementFormWidgetState();
}

class _LeaveArrangementFormWidgetState
    extends State<LeaveArrangementFormWidget> {
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  DateTime? datePicked5;
  DateTime? datePicked6;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 150,
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
                padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 40),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 50,
                      icon: Icon(
                        Icons.arrow_back,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 30,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                    Text(
                      'Verlof voorkeur ingeven',
                      style: FlutterFlowTheme.of(context).title1,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 110, 12, 12),
              child: Container(
                width: double.infinity,
                height: double.infinity,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 24),
                      child: Form(
                        key: formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 6, 0, 6),
                              child: Text(
                                'Gelieve u voorkeur dagen van verlof in te dienen. Let op: dit is geen garantie dat je die dag verlof zal hebben.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'SFPro',
                                      fontSize: 18,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Text(
                              'Heel graag',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 45,
                                  icon: Icon(
                                    Icons.add,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 25,
                                  ),
                                  onPressed: () async {
                                    final _datePicked1Date =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: getCurrentTimestamp,
                                      lastDate: DateTime(2050),
                                    );

                                    if (_datePicked1Date != null) {
                                      setState(
                                        () => datePicked1 = DateTime(
                                          _datePicked1Date.year,
                                          _datePicked1Date.month,
                                          _datePicked1Date.day,
                                        ),
                                      );
                                    }
                                  },
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat(
                                      'MMMEd',
                                      datePicked1,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    'Datum kiezen',
                                  ),
                                  style: FlutterFlowTheme.of(context).subtitle1,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 45,
                                  icon: Icon(
                                    Icons.add,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 25,
                                  ),
                                  onPressed: () async {
                                    final _datePicked2Date =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: getCurrentTimestamp,
                                      lastDate: DateTime(2050),
                                    );

                                    if (_datePicked2Date != null) {
                                      setState(
                                        () => datePicked2 = DateTime(
                                          _datePicked2Date.year,
                                          _datePicked2Date.month,
                                          _datePicked2Date.day,
                                        ),
                                      );
                                    }
                                  },
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat(
                                      'MMMEd',
                                      datePicked2,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    'Datum kiezen',
                                  ),
                                  style: FlutterFlowTheme.of(context).subtitle1,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 45,
                                  icon: Icon(
                                    Icons.add,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 25,
                                  ),
                                  onPressed: () async {
                                    final _datePicked3Date =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: getCurrentTimestamp,
                                      lastDate: DateTime(2050),
                                    );

                                    if (_datePicked3Date != null) {
                                      setState(
                                        () => datePicked3 = DateTime(
                                          _datePicked3Date.year,
                                          _datePicked3Date.month,
                                          _datePicked3Date.day,
                                        ),
                                      );
                                    }
                                  },
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat(
                                      'MMMEd',
                                      datePicked3,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    'Datum kiezen',
                                  ),
                                  style: FlutterFlowTheme.of(context).subtitle1,
                                ),
                              ],
                            ),
                            Text(
                              'Graag',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 45,
                                  icon: Icon(
                                    Icons.add,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 25,
                                  ),
                                  onPressed: () async {
                                    final _datePicked4Date =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: getCurrentTimestamp,
                                      lastDate: DateTime(2050),
                                    );

                                    if (_datePicked4Date != null) {
                                      setState(
                                        () => datePicked4 = DateTime(
                                          _datePicked4Date.year,
                                          _datePicked4Date.month,
                                          _datePicked4Date.day,
                                        ),
                                      );
                                    }
                                  },
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat(
                                      'MMMEd',
                                      datePicked4,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    'Datum kiezen',
                                  ),
                                  style: FlutterFlowTheme.of(context).subtitle1,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 45,
                                  icon: Icon(
                                    Icons.add,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 25,
                                  ),
                                  onPressed: () async {
                                    final _datePicked5Date =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: getCurrentTimestamp,
                                      lastDate: DateTime(2050),
                                    );

                                    if (_datePicked5Date != null) {
                                      setState(
                                        () => datePicked5 = DateTime(
                                          _datePicked5Date.year,
                                          _datePicked5Date.month,
                                          _datePicked5Date.day,
                                        ),
                                      );
                                    }
                                  },
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat(
                                      'MMMEd',
                                      datePicked5,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    'Datum kiezen',
                                  ),
                                  style: FlutterFlowTheme.of(context).subtitle1,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 45,
                                  icon: Icon(
                                    Icons.add,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 25,
                                  ),
                                  onPressed: () async {
                                    final _datePicked6Date =
                                        await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: getCurrentTimestamp,
                                      lastDate: DateTime(2050),
                                    );

                                    if (_datePicked6Date != null) {
                                      setState(
                                        () => datePicked6 = DateTime(
                                          _datePicked6Date.year,
                                          _datePicked6Date.month,
                                          _datePicked6Date.day,
                                        ),
                                      );
                                    }
                                  },
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat(
                                      'MMMEd',
                                      datePicked6,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    'Datum kiezen',
                                  ),
                                  style: FlutterFlowTheme.of(context).subtitle1,
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 8),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (formKey.currentState == null ||
                                      !formKey.currentState!.validate()) {
                                    return;
                                  }

                                  if (datePicked1 == null) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Gelieve voor alles een datum aan te duiden',
                                          style: TextStyle(),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                      ),
                                    );
                                    return;
                                  }
                                  if (datePicked2 == null) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Gelieve voor alles een datum aan te duiden',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                      ),
                                    );
                                    return;
                                  }
                                  if (datePicked3 == null) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Gelieve voor alles een datum aan te duiden',
                                          style: TextStyle(),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                      ),
                                    );
                                    return;
                                  }
                                  if (datePicked4 == null) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Gelieve voor alles een datum aan te duiden',
                                          style: TextStyle(),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                      ),
                                    );
                                    return;
                                  }
                                  if (datePicked5 == null) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Gelieve voor alles een datum aan te duiden',
                                          style: TextStyle(),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                      ),
                                    );
                                    return;
                                  }
                                  if (datePicked6 == null) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Gelieve voor alles een datum aan te duiden',
                                          style: TextStyle(),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                      ),
                                    );
                                    return;
                                  }

                                  final leavePreferencesCreateData =
                                      createLeavePreferencesRecordData(
                                    userName: currentUserDisplayName,
                                    date1: datePicked1,
                                    date2: datePicked2,
                                    date3: datePicked3,
                                    date4: datePicked4,
                                    date5: datePicked6,
                                    date6: datePicked6,
                                    uid: currentUserReference,
                                  );
                                  await LeavePreferencesRecord.collection
                                      .doc()
                                      .set(leavePreferencesCreateData);
                                  context.pop();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Voorkeur succesvol ingediend',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor: Color(0x00000000),
                                    ),
                                  );
                                },
                                text: 'Verlof voorkeur indienen',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 40,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'SFPro',
                                        color: Colors.white,
                                        useGoogleFonts: false,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
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
          ],
        ),
      ),
    );
  }
}
