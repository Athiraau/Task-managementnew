import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dev_remarks_model.dart';
export 'dev_remarks_model.dart';

class DevRemarksWidget extends StatefulWidget {
  const DevRemarksWidget({Key? key}) : super(key: key);

  @override
  _DevRemarksWidgetState createState() => _DevRemarksWidgetState();
}

class _DevRemarksWidgetState extends State<DevRemarksWidget> {
  late DevRemarksModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DevRemarksModel());

    _model.remmarkController ??= TextEditingController();
    _model.remmarkFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.00, 0.00),
      child: TextFormField(
        controller: _model.remmarkController,
        focusNode: _model.remmarkFocusNode,
        onChanged: (_) => EasyDebounce.debounce(
          '_model.remmarkController',
          Duration(milliseconds: 2000),
          () async {
            _model.updatePage(() {
              FFAppState().DevRemark = _model.remmarkController.text;
            });
          },
        ),
        autofocus: true,
        obscureText: false,
        decoration: InputDecoration(
          hintText: 'Remark here...',
          hintStyle: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Poppins',
                fontSize: 11.0,
              ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1.0,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1.0,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1.0,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1.0,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
            ),
          ),
          filled: true,
          fillColor: Color(0x00FFFFFF),
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Poppins',
              fontSize: 11.0,
            ),
        textAlign: TextAlign.center,
        maxLines: 20,
        minLines: 1,
        validator: _model.remmarkControllerValidator.asValidator(context),
      ),
    );
  }
}
