import '/backend/api_requests/api_calls.dart';
import '/components/session_extension/session_extension_widget.dart';
import '/components/slidbar_nav/slidbar_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'feedback_approval_detailed_widget.dart'
    show FeedbackApprovalDetailedWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class FeedbackApprovalDetailedModel
    extends FlutterFlowModel<FeedbackApprovalDetailedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (TaskByID)] action in FeedbackApprovalDetailed widget.
  ApiCallResponse? tskbyid;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  final textFieldMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for SlidbarNav component.
  late SlidbarNavModel slidbarNavModel;
  // State field(s) for Subject widget.
  FocusNode? subjectFocusNode;
  TextEditingController? subjectController;
  String? Function(BuildContext, String?)? subjectControllerValidator;
  // State field(s) for content widget.
  FocusNode? contentFocusNode;
  TextEditingController? contentController;
  String? Function(BuildContext, String?)? contentControllerValidator;
  // State field(s) for assignedby widget.
  FocusNode? assignedbyFocusNode;
  TextEditingController? assignedbyController;
  String? Function(BuildContext, String?)? assignedbyControllerValidator;
  // State field(s) for reqstType widget.
  FocusNode? reqstTypeFocusNode;
  TextEditingController? reqstTypeController;
  String? Function(BuildContext, String?)? reqstTypeControllerValidator;
  // State field(s) for requstDate widget.
  FocusNode? requstDateFocusNode;
  TextEditingController? requstDateController;
  String? Function(BuildContext, String?)? requstDateControllerValidator;
  // State field(s) for targetDate widget.
  FocusNode? targetDateFocusNode;
  TextEditingController? targetDateController;
  String? Function(BuildContext, String?)? targetDateControllerValidator;
  // State field(s) for Developer widget.
  FocusNode? developerFocusNode;
  TextEditingController? developerController;
  String? Function(BuildContext, String?)? developerControllerValidator;
  // State field(s) for Remark widget.
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
    subjectFocusNode?.dispose();
    subjectController?.dispose();

    contentFocusNode?.dispose();
    contentController?.dispose();

    assignedbyFocusNode?.dispose();
    assignedbyController?.dispose();

    reqstTypeFocusNode?.dispose();
    reqstTypeController?.dispose();

    requstDateFocusNode?.dispose();
    requstDateController?.dispose();

    targetDateFocusNode?.dispose();
    targetDateController?.dispose();

    developerFocusNode?.dispose();
    developerController?.dispose();

    remarkFocusNode?.dispose();
    remarkController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
