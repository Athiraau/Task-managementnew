import '/backend/api_requests/api_calls.dart';
import '/components/remark/remark_widget.dart';
import '/components/revised_date/revised_date_widget.dart';
import '/components/session_extension/session_extension_widget.dart';
import '/components/slidbar_nav/slidbar_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'task_dev_reqst_l_i_s_t_widget.dart' show TaskDevReqstLISTWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class TaskDevReqstLISTModel extends FlutterFlowModel<TaskDevReqstLISTWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  final textFieldMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for SlidbarNav component.
  late SlidbarNavModel slidbarNavModel;
  // Stores action output result for [Backend Call - API (TaskDeviationRequest)] action in Button widget.
  ApiCallResponse? deviaReqst;

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
