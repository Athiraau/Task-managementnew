import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'requesthandler_copy_widget.dart' show RequesthandlerCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RequesthandlerCopyModel
    extends FlutterFlowModel<RequesthandlerCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (SessionValidation)] action in requesthandlerCopy widget.
  ApiCallResponse? session;
  // Stores action output result for [Backend Call - API (hextobase)] action in requesthandlerCopy widget.
  ApiCallResponse? hextobase;
  // Stores action output result for [Custom Action - decryption] action in requesthandlerCopy widget.
  String? decrypt;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
