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
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'report_model.dart';
export 'report_model.dart';

class ReportWidget extends StatefulWidget {
  const ReportWidget({Key? key}) : super(key: key);

  @override
  _ReportWidgetState createState() => _ReportWidgetState();
}

class _ReportWidgetState extends State<ReportWidget>
    with TickerProviderStateMixin {
  late ReportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReportModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().reportFromdate = '';
        FFAppState().reportTodate = '';
        FFAppState().reportpriority = '';
        FFAppState().reportStatus = '';
        FFAppState().reportReqstType = '';
        FFAppState().reportHead = '';
        FFAppState().reportTechlead = '';
        FFAppState().reportDatepicker1 = '';
        FFAppState().reportdatepicker2 = '';
      });
      _model.name = await TaskManagementGroup.nameCall.call(
        empid: FFAppState().LoginID,
        token: FFAppState().Token,
        flag: 'GETTASKEMPLIST',
        spec: '0',
      );
      if (!(_model.name?.succeeded ?? true)) {
        await showAlignedDialog(
          context: context,
          isGlobal: true,
          avoidOverflow: false,
          targetAnchor: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          followerAnchor: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          builder: (dialogContext) {
            return Material(
              color: Colors.transparent,
              child: GestureDetector(
                onTap: () => _model.unfocusNode.canRequestFocus
                    ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                    : FocusScope.of(context).unfocus(),
                child: SessionExtensionWidget(),
              ),
            );
          },
        ).then((value) => setState(() {}));

        return;
      }
      _model.reqsttype = await TaskManagementGroup.requestTypeCall.call(
        token: FFAppState().Token,
        flag: 'GETTASKREQTYPE',
        spec1: '0',
        spec2: '0',
      );
      if (!(_model.reqsttype?.succeeded ?? true)) {
        await showAlignedDialog(
          context: context,
          isGlobal: true,
          avoidOverflow: false,
          targetAnchor: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          followerAnchor: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          builder: (dialogContext) {
            return Material(
              color: Colors.transparent,
              child: GestureDetector(
                onTap: () => _model.unfocusNode.canRequestFocus
                    ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                    : FocusScope.of(context).unfocus(),
                child: SessionExtensionWidget(),
              ),
            );
          },
        ).then((value) => setState(() {}));

        return;
      }
      _model.priority = await TaskManagementGroup.priorityCall.call(
        token: FFAppState().Token,
        flag: 'GETTASKPRIORITY',
        spec1: '0',
        spec2: '0',
      );
      if (!(_model.priority?.succeeded ?? true)) {
        await showAlignedDialog(
          context: context,
          isGlobal: true,
          avoidOverflow: false,
          targetAnchor: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          followerAnchor: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          builder: (dialogContext) {
            return Material(
              color: Colors.transparent,
              child: GestureDetector(
                onTap: () => _model.unfocusNode.canRequestFocus
                    ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                    : FocusScope.of(context).unfocus(),
                child: SessionExtensionWidget(),
              ),
            );
          },
        ).then((value) => setState(() {}));

        return;
      }
      _model.status = await TaskManagementGroup.statusCall.call(
        token: FFAppState().Token,
        flag: 'GETTASKSTATUS',
        spec1: '${'0'}',
        spec2: '0',
      );
      if (!(_model.status?.succeeded ?? true)) {
        await showAlignedDialog(
          context: context,
          isGlobal: true,
          avoidOverflow: false,
          targetAnchor: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          followerAnchor: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          builder: (dialogContext) {
            return Material(
              color: Colors.transparent,
              child: GestureDetector(
                onTap: () => _model.unfocusNode.canRequestFocus
                    ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                    : FocusScope.of(context).unfocus(),
                child: SessionExtensionWidget(),
              ),
            );
          },
        ).then((value) => setState(() {}));

        return;
      }
      setState(() {
        FFAppState().Name = (TaskManagementGroup.nameCall.empName(
          (_model.name?.jsonBody ?? ''),
        ) as List)
            .map<String>((s) => s.toString())
            .toList()!
            .toList()
            .cast<String>();
        FFAppState().NameID = (TaskManagementGroup.nameCall.empID(
          (_model.name?.jsonBody ?? ''),
        ) as List)
            .map<String>((s) => s.toString())
            .toList()!
            .map((e) => e.toString())
            .toList()
            .toList()
            .cast<String>();
        FFAppState().RequestType = (TaskManagementGroup.requestTypeCall.reqType(
          (_model.reqsttype?.jsonBody ?? ''),
        ) as List)
            .map<String>((s) => s.toString())
            .toList()!
            .toList()
            .cast<String>();
        FFAppState().RequestID = (TaskManagementGroup.requestTypeCall.reqID(
          (_model.reqsttype?.jsonBody ?? ''),
        ) as List)
            .map<String>((s) => s.toString())
            .toList()!
            .map((e) => e.toString())
            .toList()
            .toList()
            .cast<String>();
        FFAppState().priority = (TaskManagementGroup.priorityCall.priority(
          (_model.priority?.jsonBody ?? ''),
        ) as List)
            .map<String>((s) => s.toString())
            .toList()!
            .toList()
            .cast<String>();
        FFAppState().PriorityID = (TaskManagementGroup.priorityCall.priorityID(
          (_model.priority?.jsonBody ?? ''),
        ) as List)
            .map<String>((s) => s.toString())
            .toList()!
            .map((e) => e.toString())
            .toList()
            .toList()
            .cast<String>();
        FFAppState().status = (TaskManagementGroup.statusCall.status(
          (_model.status?.jsonBody ?? ''),
        ) as List)
            .map<String>((s) => s.toString())
            .toList()!
            .toList()
            .cast<String>();
        FFAppState().statusID = (TaskManagementGroup.statusCall.statusID(
          (_model.status?.jsonBody ?? ''),
        ) as List)
            .map<String>((s) => s.toString())
            .toList()!
            .map((e) => e.toString())
            .toList()
            .toList()
            .cast<String>();
      });
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Builder(
      builder: (context) => GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100.0,
                        height: MediaQuery.sizeOf(context).height * 0.09,
                        decoration: BoxDecoration(
                          color: Color(0xFFF7E63F),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.97, 0.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.08,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.04,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF5E329),
                                  ),
                                  child: Image.asset(
                                    'assets/images/index.png',
                                    width: 100.0,
                                    height: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(-0.75, 0.00),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.2,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.06,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(30.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            controller: _model.textController,
                                            focusNode:
                                                _model.textFieldFocusNode,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText: 'Search ',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 13.0,
                                                ),
                                            maxLines: 4,
                                            minLines: 1,
                                            keyboardType: TextInputType.number,
                                            validator: _model
                                                .textControllerValidator
                                                .asValidator(context),
                                            inputFormatters: [
                                              _model.textFieldMask
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30.0,
                                            borderWidth: 1.0,
                                            buttonSize: 50.0,
                                            icon: Icon(
                                              Icons.search,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 20.0,
                                            ),
                                            onPressed: () async {
                                              context.pushNamed(
                                                'SearchResult',
                                                queryParameters: {
                                                  'taskid': serializeParam(
                                                    _model.textController.text,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 50.0, 5.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.08,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.08,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7E63F),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      FFAppState().LoginID = '';
                                      FFAppState().Token = '';
                                      FFAppState().LoginEmp = '';
                                    });

                                    context.goNamed('requesthandler');
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.logout,
                                        color: Color(0xFFCB2727),
                                        size: 23.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'LOGOUT',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFCB2727),
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.slidbarNavModel,
                              updateCallback: () => setState(() {}),
                              child: SlidbarNavWidget(
                                bgCreation: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                bgApproval:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                bgWorkupdation:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                bgReport: Color(0xFFFFE051),
                                bgTaskDevrequest: Colors.white,
                                bgDevapproval: Colors.white,
                                bgFeedbackApproval: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 30.0, 30.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                    ),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  30.0, 100.0, 30.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 30.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'REPORT',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 15.0,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(50.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'From Date',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(73.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.2,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.05,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  30.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 50.0,
                                                              icon: Icon(
                                                                Icons
                                                                    .calendar_today_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 15.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                final _datePicked1Date =
                                                                    await showDatePicker(
                                                                  context:
                                                                      context,
                                                                  initialDate:
                                                                      getCurrentTimestamp,
                                                                  firstDate:
                                                                      DateTime(
                                                                          1900),
                                                                  lastDate:
                                                                      DateTime(
                                                                          2050),
                                                                );

                                                                if (_datePicked1Date !=
                                                                    null) {
                                                                  safeSetState(
                                                                      () {
                                                                    _model.datePicked1 =
                                                                        DateTime(
                                                                      _datePicked1Date
                                                                          .year,
                                                                      _datePicked1Date
                                                                          .month,
                                                                      _datePicked1Date
                                                                          .day,
                                                                    );
                                                                  });
                                                                }
                                                                setState(() {
                                                                  FFAppState()
                                                                          .reportFromdate =
                                                                      _model
                                                                          .datePicked1!
                                                                          .toString();
                                                                  FFAppState()
                                                                          .reportDatepicker1 =
                                                                      dateTimeFormat(
                                                                          'd/M/y',
                                                                          _model
                                                                              .datePicked1);
                                                                });
                                                              },
                                                            ),
                                                            Text(
                                                              FFAppState()
                                                                  .reportDatepicker1,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        10.0,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(200.0,
                                                                0.0, 0.0, 0.0),
                                                    child: Text(
                                                      'To Date',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(40.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.2,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.05,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    6.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  30.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 50.0,
                                                              icon: Icon(
                                                                Icons
                                                                    .calendar_today_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 15.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                final _datePicked2Date =
                                                                    await showDatePicker(
                                                                  context:
                                                                      context,
                                                                  initialDate:
                                                                      getCurrentTimestamp,
                                                                  firstDate:
                                                                      DateTime(
                                                                          1900),
                                                                  lastDate:
                                                                      DateTime(
                                                                          2050),
                                                                );

                                                                if (_datePicked2Date !=
                                                                    null) {
                                                                  safeSetState(
                                                                      () {
                                                                    _model.datePicked2 =
                                                                        DateTime(
                                                                      _datePicked2Date
                                                                          .year,
                                                                      _datePicked2Date
                                                                          .month,
                                                                      _datePicked2Date
                                                                          .day,
                                                                    );
                                                                  });
                                                                }
                                                                setState(() {
                                                                  FFAppState()
                                                                          .reportTodate =
                                                                      _model
                                                                          .datePicked2!
                                                                          .toString();
                                                                  FFAppState()
                                                                          .reportdatepicker2 =
                                                                      dateTimeFormat(
                                                                          'd/M/y',
                                                                          _model
                                                                              .datePicked2);
                                                                });
                                                              },
                                                            ),
                                                            Text(
                                                              FFAppState()
                                                                  .reportdatepicker2,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        10.0,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 20.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  50.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Priority',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 12.0,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  90.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .priorityValueController ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.priorityValue ??=
                                                              '',
                                                        ),
                                                        options: List<
                                                                String>.from(
                                                            FFAppState()
                                                                .PriorityID),
                                                        optionLabels:
                                                            FFAppState()
                                                                .priority,
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .priorityValue =
                                                                val),
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.2,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.05,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                        fillColor: Colors.white,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        borderWidth: 1.0,
                                                        borderRadius: 5.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    4.0,
                                                                    12.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        isOverButton: false,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  200.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Status',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 12.0,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  48.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .statuValueController ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.statuValue ??=
                                                              '',
                                                        ),
                                                        options:
                                                            List<String>.from(
                                                                FFAppState()
                                                                    .statusID),
                                                        optionLabels:
                                                            FFAppState().status,
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .statuValue =
                                                                val),
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.2,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.05,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                        fillColor: Colors.white,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        borderWidth: 1.0,
                                                        borderRadius: 5.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    4.0,
                                                                    12.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        isOverButton: false,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 20.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  50.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Request Type',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 12.0,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  52.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .reqsttypeValueController ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.reqsttypeValue ??=
                                                              '',
                                                        ),
                                                        options:
                                                            List<String>.from(
                                                                FFAppState()
                                                                    .RequestID),
                                                        optionLabels:
                                                            FFAppState()
                                                                .RequestType,
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .reqsttypeValue =
                                                                val),
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.2,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.05,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                        fillColor: Colors.white,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        borderWidth: 1.0,
                                                        borderRadius: 5.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    4.0,
                                                                    12.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        isOverButton: false,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  203.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Head',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 12.0,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  49.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .headValueController ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.headValue ??=
                                                              '',
                                                        ),
                                                        options:
                                                            List<String>.from(
                                                                FFAppState()
                                                                    .NameID),
                                                        optionLabels:
                                                            FFAppState().Name,
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .headValue =
                                                                val),
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.2,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.05,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                        fillColor: Colors.white,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        borderWidth: 1.0,
                                                        borderRadius: 5.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    4.0,
                                                                    12.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        isOverButton: false,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 50.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        setState(() {
                                                          FFAppState()
                                                                  .reportFromdate =
                                                              valueOrDefault<
                                                                  String>(
                                                            _model.datePicked1
                                                                ?.toString(),
                                                            '2020-01-01 00:00:00.000',
                                                          );
                                                          FFAppState()
                                                                  .reportTodate =
                                                              valueOrDefault<
                                                                  String>(
                                                            _model.datePicked2
                                                                ?.toString(),
                                                            '  2044-05-01 00:00:00.000',
                                                          );
                                                          FFAppState()
                                                                  .reportpriority =
                                                              _model
                                                                  .priorityValue!;
                                                          FFAppState()
                                                                  .reportStatus =
                                                              _model
                                                                  .statuValue!;
                                                          FFAppState()
                                                                  .reportReqstType =
                                                              _model
                                                                  .reqsttypeValue!;
                                                          FFAppState()
                                                                  .reportHead =
                                                              _model.headValue!;
                                                        });
                                                        if (Navigator.of(
                                                                context)
                                                            .canPop()) {
                                                          context.pop();
                                                        }
                                                        context.pushNamed(
                                                          'REPORTDetails',
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      0),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      text: 'Generate',
                                                      options: FFButtonOptions(
                                                        width: 85.0,
                                                        height: 30.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            Color(0xFFCB2727),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      10.0,
                                                                ),
                                                        elevation: 2.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        hoverElevation: 5.0,
                                                      ),
                                                    ),
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        setState(() {
                                                          FFAppState()
                                                              .reportFromdate = '';
                                                          FFAppState()
                                                              .reportTodate = '';
                                                          FFAppState()
                                                              .reportpriority = '';
                                                          FFAppState()
                                                              .reportStatus = '';
                                                          FFAppState()
                                                              .reportReqstType = '';
                                                          FFAppState()
                                                              .reportHead = '';
                                                          FFAppState()
                                                              .reportTechlead = '';
                                                        });
                                                        setState(() {
                                                          FFAppState()
                                                              .reportDatepicker1 = '';
                                                          FFAppState()
                                                              .reportdatepicker2 = '';
                                                        });
                                                        if (Navigator.of(
                                                                context)
                                                            .canPop()) {
                                                          context.pop();
                                                        }
                                                        context.pushNamed(
                                                          'DASHBOARD',
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      0),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      text: 'Exit',
                                                      options: FFButtonOptions(
                                                        width: 85.0,
                                                        height: 30.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            Color(0xFFCB2727),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      10.0,
                                                                ),
                                                        elevation: 2.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        hoverElevation: 5.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ).animateOnPageLoad(
                              animationsMap['columnOnPageLoadAnimation']!),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
