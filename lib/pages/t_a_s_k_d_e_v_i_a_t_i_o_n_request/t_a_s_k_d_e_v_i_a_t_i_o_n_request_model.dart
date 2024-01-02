import '/backend/api_requests/api_calls.dart';
import '/components/session_extension/session_extension_widget.dart';
import '/components/slidbar_nav/slidbar_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 't_a_s_k_d_e_v_i_a_t_i_o_n_request_widget.dart'
    show TASKDEVIATIONRequestWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class TASKDEVIATIONRequestModel
    extends FlutterFlowModel<TASKDEVIATIONRequestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (TaskByID)] action in TASKDEVIATION_Request widget.
  ApiCallResponse? dev;
  // State field(s) for Search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchController;
  final searchMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? searchControllerValidator;
  // Model for SlidbarNav component.
  late SlidbarNavModel slidbarNavModel;
  // State field(s) for Subjecct widget.
  FocusNode? subjecctFocusNode1;
  TextEditingController? subjecctController1;
  String? Function(BuildContext, String?)? subjecctController1Validator;
  // State field(s) for Subjecct widget.
  FocusNode? subjecctFocusNode2;
  TextEditingController? subjecctController2;
  String? Function(BuildContext, String?)? subjecctController2Validator;
  // State field(s) for Content widget.
  FocusNode? contentFocusNode;
  TextEditingController? contentController;
  String? Function(BuildContext, String?)? contentControllerValidator;
  // State field(s) for Reason widget.
  FocusNode? reasonFocusNode;
  TextEditingController? reasonController;
  String? Function(BuildContext, String?)? reasonControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (TaskDeviationRequest)] action in Button widget.
  ApiCallResponse? deviaReqst;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    slidbarNavModel = createModel(context, () => SlidbarNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    searchFocusNode?.dispose();
    searchController?.dispose();

    slidbarNavModel.dispose();
    subjecctFocusNode1?.dispose();
    subjecctController1?.dispose();

    subjecctFocusNode2?.dispose();
    subjecctController2?.dispose();

    contentFocusNode?.dispose();
    contentController?.dispose();

    reasonFocusNode?.dispose();
    reasonController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
