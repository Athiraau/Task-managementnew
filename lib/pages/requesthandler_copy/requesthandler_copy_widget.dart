import '/backend/api_requests/api_calls.dart';
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
import 'requesthandler_copy_model.dart';
export 'requesthandler_copy_model.dart';

class RequesthandlerCopyWidget extends StatefulWidget {
  const RequesthandlerCopyWidget({
    Key? key,
    this.session,
    this.token,
  }) : super(key: key);

  final String? session;
  final String? token;

  @override
  _RequesthandlerCopyWidgetState createState() =>
      _RequesthandlerCopyWidgetState();
}

class _RequesthandlerCopyWidgetState extends State<RequesthandlerCopyWidget> {
  late RequesthandlerCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequesthandlerCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().Token = widget.token!;
      });
      _model.session = await SessionValidationCall.call(
        sessionID: widget.session,
        token: FFAppState().Token,
      );
      setState(() {
        FFAppState().sessioncount = SessionValidationCall.count(
          (_model.session?.jsonBody ?? ''),
        ).toString().toString();
      });
      if (FFAppState().sessioncount != '1') {
        if ((_model.session?.statusCode ?? 200).toString() == '401') {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    content: Text('Session Expired'),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: Text('Confirm'),
                      ),
                    ],
                  );
                },
              ) ??
              false;
        }
        return;
      }
      _model.hextobase = await HextobaseCall.call(
        indata: widget.session,
      );
      setState(() {
        FFAppState().base64 = HextobaseCall.result(
          (_model.hextobase?.jsonBody ?? ''),
        ).toString().toString();
      });
      _model.decrypt = await actions.decryption(
        FFAppState().base64,
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
