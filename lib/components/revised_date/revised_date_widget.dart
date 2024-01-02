import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'revised_date_model.dart';
export 'revised_date_model.dart';

class RevisedDateWidget extends StatefulWidget {
  const RevisedDateWidget({Key? key}) : super(key: key);

  @override
  _RevisedDateWidgetState createState() => _RevisedDateWidgetState();
}

class _RevisedDateWidgetState extends State<RevisedDateWidget> {
  late RevisedDateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RevisedDateModel());

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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                final _datePickedDate = await showDatePicker(
                  context: context,
                  initialDate: getCurrentTimestamp,
                  firstDate: getCurrentTimestamp,
                  lastDate: DateTime(2050),
                );

                if (_datePickedDate != null) {
                  safeSetState(() {
                    _model.datePicked = DateTime(
                      _datePickedDate.year,
                      _datePickedDate.month,
                      _datePickedDate.day,
                    );
                  });
                }
                _model.updatePage(() {
                  FFAppState().RevisedDate =
                      dateTimeFormat('d/M/y', _model.datePicked);
                });
              },
              child: Icon(
                Icons.calendar_today_outlined,
                color: Colors.black,
                size: 20.0,
              ),
            ),
          ),
          Text(
            FFAppState().RevisedDate,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  fontSize: 9.0,
                ),
          ),
        ],
      ),
    );
  }
}
