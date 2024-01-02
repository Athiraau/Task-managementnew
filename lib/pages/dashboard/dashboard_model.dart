import '/backend/api_requests/api_calls.dart';
import '/components/session_extension/session_extension_widget.dart';
import '/components/slidbar_nav/slidbar_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Dashboard)] action in DASHBOARD widget.
  ApiCallResponse? dasboarddCopy;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  final textFieldMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for SlidbarNav component.
  late SlidbarNavModel slidbarNavModel;

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
