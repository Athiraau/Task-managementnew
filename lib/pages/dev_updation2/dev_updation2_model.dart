import '/backend/api_requests/api_calls.dart';
import '/components/perce/perce_widget.dart';
import '/components/remark/remark_widget.dart';
import '/components/session_extension/session_extension_widget.dart';
import '/components/slidbar_nav/slidbar_nav_widget.dart';
import '/components/status/status_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dev_updation2_widget.dart' show DevUpdation2Widget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class DevUpdation2Model extends FlutterFlowModel<DevUpdation2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (status)] action in Dev_updation2 widget.
  ApiCallResponse? status;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  final textFieldMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for SlidbarNav component.
  late SlidbarNavModel slidbarNavModel;
  // Stores action output result for [Backend Call - API (UpdateTask)] action in Button widget.
  ApiCallResponse? updatetsk;

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
