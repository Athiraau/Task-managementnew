import '/backend/api_requests/api_calls.dart';
import '/components/session_extension/session_extension_widget.dart';
import '/components/slidbar_nav/slidbar_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'search_result_widget.dart' show SearchResultWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchResultModel extends FlutterFlowModel<SearchResultWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (TaskByID)] action in SearchResult widget.
  ApiCallResponse? tskbyid;
  // Model for SlidbarNav component.
  late SlidbarNavModel slidbarNavModel;
  // State field(s) for Task widget.
  FocusNode? taskFocusNode;
  TextEditingController? taskController;
  String? Function(BuildContext, String?)? taskControllerValidator;
  // State field(s) for Subject widget.
  FocusNode? subjectFocusNode;
  TextEditingController? subjectController;
  String? Function(BuildContext, String?)? subjectControllerValidator;
  // State field(s) for content widget.
  FocusNode? contentFocusNode;
  TextEditingController? contentController;
  String? Function(BuildContext, String?)? contentControllerValidator;
  // State field(s) for asgnedBy widget.
  FocusNode? asgnedByFocusNode;
  TextEditingController? asgnedByController;
  String? Function(BuildContext, String?)? asgnedByControllerValidator;
  // State field(s) for Priority widget.
  FocusNode? priorityFocusNode;
  TextEditingController? priorityController;
  String? Function(BuildContext, String?)? priorityControllerValidator;
  // State field(s) for reqstedType widget.
  FocusNode? reqstedTypeFocusNode;
  TextEditingController? reqstedTypeController;
  String? Function(BuildContext, String?)? reqstedTypeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    slidbarNavModel = createModel(context, () => SlidbarNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    slidbarNavModel.dispose();
    taskFocusNode?.dispose();
    taskController?.dispose();

    subjectFocusNode?.dispose();
    subjectController?.dispose();

    contentFocusNode?.dispose();
    contentController?.dispose();

    asgnedByFocusNode?.dispose();
    asgnedByController?.dispose();

    priorityFocusNode?.dispose();
    priorityController?.dispose();

    reqstedTypeFocusNode?.dispose();
    reqstedTypeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
