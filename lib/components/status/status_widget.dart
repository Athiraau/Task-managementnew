import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'status_model.dart';
export 'status_model.dart';

class StatusWidget extends StatefulWidget {
  const StatusWidget({Key? key}) : super(key: key);

  @override
  _StatusWidgetState createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  late StatusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusModel());

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

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.00, 0.00),
        child: FlutterFlowDropDown<String>(
          controller: _model.dropDownValueController ??=
              FormFieldController<String>(
            _model.dropDownValue ??= '',
          ),
          options: List<String>.from(FFAppState().statusID),
          optionLabels: FFAppState().status,
          onChanged: (val) async {
            setState(() => _model.dropDownValue = val);
            _model.updatePage(() {
              FFAppState().DevStatus = _model.dropDownValue!;
            });
          },
          width: 180.0,
          height: 50.0,
          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 8.0,
              ),
          hintText: 'status',
          fillColor: FlutterFlowTheme.of(context).lineColor,
          elevation: 2.0,
          borderColor: Colors.transparent,
          borderWidth: 0.0,
          borderRadius: 0.0,
          margin: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
          hidesUnderline: true,
          isOverButton: false,
          isSearchable: false,
          isMultiSelect: false,
        ),
      ),
    );
  }
}
