import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  DateTimeRange? calendarSelectedDay;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 170,
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
                padding: EdgeInsetsDirectional.fromSTEB(12, 48, 12, 50),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Post',
                      style: FlutterFlowTheme.of(context).title1,
                    ),
                  ],
                ),
              ),
            ),
            if (!valueOrDefault<bool>(currentUserDocument?.userHasPost, false))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 120, 12, 12),
                child: AuthUserStreamWidget(
                  builder: (context) => Container(
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
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 24, 12, 24),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Geen post',
                            style: FlutterFlowTheme.of(context).title2,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 6),
                            child: Text(
                              'U bent nog niet toegewezen aan een post. Mogelijke redenen hiervoor zijn:\n\n- U moet nog door de administratie toegevoegd worden aan een post\n- U bent niet tewerkgesteld\n- Het is geen werkmaand\n\nIndien u op de eerste dag van u tewerkstelling nog geen post heeft. Gelieve dan de hoofdredder te contacteren',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            if (valueOrDefault<bool>(currentUserDocument?.userHasPost, false))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 120, 12, 12),
                child: AuthUserStreamWidget(
                  builder: (context) => StreamBuilder<PostsRecord>(
                    stream: PostsRecord.getDocument(
                        currentUserDocument!.lifeguardPost!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: SpinKitRing(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 50,
                            ),
                          ),
                        );
                      }
                      final noPlanningPostsRecord = snapshot.data!;
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Visibility(
                          visible: !noPlanningPostsRecord.scheduleMade!,
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 24, 12, 24),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        noPlanningPostsRecord.postName!,
                                        style:
                                            FlutterFlowTheme.of(context).title2,
                                      ),
                                      StreamBuilder<List<UsersRecord>>(
                                        stream: queryUsersRecord(
                                          queryBuilder: (usersRecord) =>
                                              usersRecord
                                                  .where(
                                                      'lifeguard_post',
                                                      isEqualTo:
                                                          noPlanningPostsRecord
                                                              .reference)
                                                  .orderBy('post_number'),
                                          limit: 7,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: SpinKitRing(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  size: 50,
                                                ),
                                              ),
                                            );
                                          }
                                          List<UsersRecord>
                                              colleagesUsersRecordList =
                                              snapshot.data!;
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                colleagesUsersRecordList.length,
                                                (colleagesIndex) {
                                              final colleagesUsersRecord =
                                                  colleagesUsersRecordList[
                                                      colleagesIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 3, 0, 3),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        valueOrDefault<String>(
                                                          colleagesUsersRecord
                                                              .photoUrl,
                                                          'https://firebasestorage.googleapis.com/v0/b/lifeguard-kh.appspot.com/o/blank-profile-picture-973460_1280.webp?alt=media&token=768f889d-bc72-4d62-91ab-ab4d43752d44',
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  6, 0, 0, 0),
                                                      child: Text(
                                                        colleagesUsersRecord
                                                            .displayName!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }),
                                          );
                                        },
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 12, 0, 0),
                                        child: Text(
                                          'Geen planning',
                                          style: FlutterFlowTheme.of(context)
                                              .title2,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 6, 0, 0),
                                        child: Text(
                                          'De planning moet nog gemaakt worden, gelieve u gewenste verlof voorkeur zo snel mogelijk door te geven.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 6, 0, 6),
                                        child: FFButtonWidget(
                                          onPressed: valueOrDefault<bool>(
                                                  currentUserDocument
                                                      ?.userSubmittedPreferences,
                                                  false)
                                              ? null
                                              : () async {
                                                  context.pushNamed(
                                                      'LeaveArrangementForm');
                                                },
                                          text: 'Verlof voorkeur kiezen',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 40,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            disabledColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 6, 0, 6),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context
                                                .pushNamed('LeavePreferences');
                                          },
                                          text: 'Verlof voorkeuren bekijken',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 40,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'SFPro',
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      useGoogleFonts: false,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Color(0x00D30D00),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 6, 0, 6),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('ReportDefect');
                                          },
                                          text: 'Dagverslag (na 18h)',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 40,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 6, 0, 6),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('ReportDefect');
                                          },
                                          text: 'Defect of tekort melden',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 40,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 6, 0, 6),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context
                                                .pushNamed('LostChildReport');
                                          },
                                          text: 'Verloren kind melden',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 40,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            if (valueOrDefault<bool>(currentUserDocument?.userHasPost, false))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 120, 12, 12),
                child: AuthUserStreamWidget(
                  builder: (context) => StreamBuilder<PostsRecord>(
                    stream: PostsRecord.getDocument(
                        currentUserDocument!.lifeguardPost!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: SpinKitRing(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 50,
                            ),
                          ),
                        );
                      }
                      final planningTruePostsRecord = snapshot.data!;
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Visibility(
                          visible: planningTruePostsRecord.scheduleMade ?? true,
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 24, 12, 24),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 12),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          planningTruePostsRecord.postName!,
                                          style: FlutterFlowTheme.of(context)
                                              .title2,
                                        ),
                                        FlutterFlowCalendar(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          weekFormat: true,
                                          weekStartsMonday: true,
                                          onChange: (DateTimeRange?
                                              newSelectedDate) async {
                                            calendarSelectedDay =
                                                newSelectedDate;
                                            setState(() {
                                              FFAppState().selectedDate =
                                                  calendarSelectedDay?.start;
                                            });
                                            setState(() {});
                                          },
                                          titleStyle:
                                              FlutterFlowTheme.of(context)
                                                  .title3,
                                          dayOfWeekStyle: TextStyle(),
                                          dateStyle: TextStyle(),
                                          selectedDateStyle: TextStyle(),
                                          inactiveDateStyle: TextStyle(),
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  dateTimeFormat(
                                                    'MMMMEEEEd',
                                                    FFAppState().selectedDate,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  ),
                                                  'Date',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title2,
                                              ),
                                              Text(
                                                planningTruePostsRecord
                                                    .postName!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title3,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: StreamBuilder<
                                                    List<UsersRecord>>(
                                                  stream: queryUsersRecord(
                                                    queryBuilder: (usersRecord) =>
                                                        usersRecord
                                                            .where(
                                                                'lifeguard_post',
                                                                isEqualTo:
                                                                    planningTruePostsRecord
                                                                        .reference)
                                                            .orderBy(
                                                                'post_number'),
                                                    limit: 4,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitRing(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<UsersRecord>
                                                        columnUsersRecordList =
                                                        snapshot.data!;
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: List.generate(
                                                          columnUsersRecordList
                                                              .length,
                                                          (columnIndex) {
                                                        final columnUsersRecord =
                                                            columnUsersRecordList[
                                                                columnIndex];
                                                        return Text(
                                                          columnUsersRecord
                                                              .displayName!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1,
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 6, 0, 6),
                                        child: FFButtonWidget(
                                          onPressed: true
                                              ? null
                                              : () {
                                                  print('Button pressed ...');
                                                },
                                          text: 'Dagverslag (na 18h)',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 40,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            disabledColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiaryColor,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 6, 0, 6),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('ReportDefect');
                                          },
                                          text: 'Defect of tekort melden',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 40,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 6, 0, 6),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context
                                                .pushNamed('LostChildReport');
                                          },
                                          text: 'Verloren kind melden',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 40,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
