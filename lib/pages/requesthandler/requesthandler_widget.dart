import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'requesthandler_model.dart';
export 'requesthandler_model.dart';

class RequesthandlerWidget extends StatefulWidget {
  const RequesthandlerWidget({
    Key? key,
    this.session,
    this.token,
  }) : super(key: key);

  final String? session;
  final String? token;

  @override
  _RequesthandlerWidgetState createState() => _RequesthandlerWidgetState();
}

class _RequesthandlerWidgetState extends State<RequesthandlerWidget> {
  late RequesthandlerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequesthandlerModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.decrypt = await actions.decodeBase64(
        widget.session!,
      );
      setState(() {
        FFAppState().decrypt = _model.decrypt!;
        FFAppState().decryptList =
            functions.split(_model.decrypt)!.toList().cast<String>();
        FFAppState().Token = widget.token!;
      });
      setState(() {
        FFAppState().branchiddecrypt = FFAppState().decryptList[0];
        FFAppState().branchnamedecrypt = FFAppState().decryptList[1];
        FFAppState().useriddecrypt = FFAppState().decryptList[2];
        FFAppState().empnamedecrypt = FFAppState().decryptList[3];
        FFAppState().punchbranchdecrypt = FFAppState().decryptList[4];
        FFAppState().accessiddecrypt = FFAppState().decryptList[6];
        FFAppState().roleiddecrypt = FFAppState().decryptList[6];
        FFAppState().loginIpAdd = functions
            .splitEx(FFAppState().useriddecrypt)!
            .toList()
            .cast<String>();
        FFAppState().LoginID = FFAppState().loginIpAdd[0];
        FFAppState().LoginEmp = FFAppState().empnamedecrypt;
      });

      context.pushNamed(
        'DASHBOARD',
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 0),
          ),
        },
      );
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
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
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
