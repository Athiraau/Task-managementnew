import '/backend/api_requests/api_calls.dart';
import '/components/session_extension/session_extension_widget.dart';
import '/components/slidbar_nav/slidbar_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 't_a_s_k_d_e_v_i_a_t_i_o_n_a_p_p_r_o_v_a_l_detail_widget.dart'
    show TASKDEVIATIONAPPROVALDetailWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class TASKDEVIATIONAPPROVALDetailModel
    extends FlutterFlowModel<TASKDEVIATIONAPPROVALDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (TaskByID)] action in TASKDEVIATION_APPROVAL_detail widget.
  ApiCallResponse? tskbyid;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  final textFieldMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for SlidbarNav component.
  late SlidbarNavModel slidbarNavModel;
  // State field(s) for sub widget.
  FocusNode? subFocusNode;
  TextEditingController? subController;
  String? Function(BuildContext, String?)? subControllerValidator;
  // State field(s) for content widget.
  FocusNode? contentFocusNode;
  TextEditingController? contentController;
  String? Function(BuildContext, String?)? contentControllerValidator;
  // State field(s) for Reason widget.
  FocusNode? reasonFocusNode;
  TextEditingController? reasonController;
  String? Function(BuildContext, String?)? reasonControllerValidator;
  // State field(s) for remark widget.
  FocusNode? remarkFocusNode;
  TextEditingController? remarkController;
  String? Function(BuildContext, String?)? remarkControllerValidator;
  // Stores action output result for [Backend Call - API (TaskApprove)] action in Button widget.
  ApiCallResponse? approve;
  // Stores action output result for [Backend Call - API (TaskApprove)] action in Button widget.
  ApiCallResponse? reject;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    slidbarNavModel = createModel(context, () => SlidbarNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    slidbarNavModel.dispose();
    subFocusNode?.dispose();
    subController?.dispose();

    contentFocusNode?.dispose();
    contentController?.dispose();

    reasonFocusNode?.dispose();
    reasonController?.dispose();

    remarkFocusNode?.dispose();
    remarkController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
