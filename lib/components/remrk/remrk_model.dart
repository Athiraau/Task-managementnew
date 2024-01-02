import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'remrk_widget.dart' show RemrkWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RemrkModel extends FlutterFlowModel<RemrkWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for remmark widget.
  FocusNode? remmarkFocusNode;
  TextEditingController? remmarkController;
  String? Function(BuildContext, String?)? remmarkControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    remmarkFocusNode?.dispose();
    remmarkController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
