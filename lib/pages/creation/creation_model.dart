import '/backend/api_requests/api_calls.dart';
import '/components/session_extension/session_extension_widget.dart';
import '/components/slidbar_nav/slidbar_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'creation_widget.dart' show CreationWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CreationModel extends FlutterFlowModel<CreationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (RequestType)] action in CREATION widget.
  ApiCallResponse? reqst;
  // Stores action output result for [Backend Call - API (Priority)] action in CREATION widget.
  ApiCallResponse? priorityy;
  // Stores action output result for [Backend Call - API (Name)] action in CREATION widget.
  ApiCallResponse? nameee;
  // State field(s) for Search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchController;
  final searchMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? searchControllerValidator;
  // Model for SlidbarNav component.
  late SlidbarNavModel slidbarNavModel;
  // State field(s) for Subject widget.
  FocusNode? subjectFocusNode;
  TextEditingController? subjectController;
  String? Function(BuildContext, String?)? subjectControllerValidator;
  // State field(s) for Content widget.
  FocusNode? contentFocusNode;
  TextEditingController? contentController;
  String? Function(BuildContext, String?)? contentControllerValidator;
  // State field(s) for Name widget.
  String? nameValue;
  FormFieldController<String>? nameValueController;
  // State field(s) for RequestType widget.
  String? requestTypeValue;
  FormFieldController<String>? requestTypeValueController;
  // State field(s) for Priority widget.
  String? priorityValue;
  FormFieldController<String>? priorityValueController;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (Create)] action in Button widget.
  ApiCallResponse? create;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    slidbarNavModel = createModel(context, () => SlidbarNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    searchFocusNode?.dispose();
    searchController?.dispose();

    slidbarNavModel.dispose();
    subjectFocusNode?.dispose();
    subjectController?.dispose();

    contentFocusNode?.dispose();
    contentController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
