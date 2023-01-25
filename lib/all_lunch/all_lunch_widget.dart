import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AllLunchWidget extends StatefulWidget {
  const AllLunchWidget({Key? key}) : super(key: key);

  @override
  _AllLunchWidgetState createState() => _AllLunchWidgetState();
}

class _AllLunchWidgetState extends State<AllLunchWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color(0x00FFFFFF),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'SFPro',
                  color: Colors.white,
                  fontSize: 22,
                  useGoogleFonts: false,
                ),
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: SvgPicture.asset(
              'assets/images/background.svg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: Container(),
          ),
          centerTitle: false,
          elevation: 0,
        ),
      ),
    );
  }
}
