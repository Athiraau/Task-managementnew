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
import 'report_widget.dart' show ReportWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class ReportModel extends FlutterFlowModel<ReportWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Name)] action in REPORT widget.
  ApiCallResponse? name;
  // Stores action output result for [Backend Call - API (RequestType)] action in REPORT widget.
  ApiCallResponse? reqsttype;
  // Stores action output result for [Backend Call - API (Priority)] action in REPORT widget.
  ApiCallResponse? priority;
  // Stores action output result for [Backend Call - API (status)] action in REPORT widget.
  ApiCallResponse? status;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  final textFieldMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for SlidbarNav component.
  late SlidbarNavModel slidbarNavModel;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for priority widget.
  String? priorityValue;
  FormFieldController<String>? priorityValueController;
  // State field(s) for statu widget.
  String? statuValue;
  FormFieldController<String>? statuValueController;
  // State field(s) for reqsttype widget.
  String? reqsttypeValue;
  FormFieldController<String>? reqsttypeValueController;
  // State field(s) for head widget.
  String? headValue;
  FormFieldController<String>? headValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    slidbarNavModel = createModel(context, () => SlidbarNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    slidbarNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
