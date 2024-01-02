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
import 'developer_updation_widget.dart' show DeveloperUpdationWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class DeveloperUpdationModel extends FlutterFlowModel<DeveloperUpdationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (TaskByID)] action in DEVELOPER_UPDATION widget.
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
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for DropDownStatus widget.
  String? dropDownStatusValue;
  FormFieldController<String>? dropDownStatusValueController;
  // State field(s) for Percentage widget.
  FocusNode? percentageFocusNode;
  TextEditingController? percentageController;
  final percentageMask = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? percentageControllerValidator;
  // Stores action output result for [Backend Call - API (UpdateTask)] action in Button widget.
  ApiCallResponse? updatetsk;

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

    asgnedByFocusNode?.dispose();
    asgnedByController?.dispose();

    priorityFocusNode?.dispose();
    priorityController?.dispose();

    reqstedTypeFocusNode?.dispose();
    reqstedTypeController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    percentageFocusNode?.dispose();
    percentageController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
