import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start TaskManagement Group Code

class TaskManagementGroup {
  static String baseUrl = 'https://uatapp.manappuram.net/TaskManagement/api';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static DashboardCall dashboardCall = DashboardCall();
  static DashboardCopyCall dashboardCopyCall = DashboardCopyCall();
  static NameCall nameCall = NameCall();
  static RequestTypeCall requestTypeCall = RequestTypeCall();
  static PriorityCall priorityCall = PriorityCall();
  static CreateCall createCall = CreateCall();
  static ApproveListCall approveListCall = ApproveListCall();
  static TaskApproveCall taskApproveCall = TaskApproveCall();
  static FeedbackApproveCall feedbackApproveCall = FeedbackApproveCall();
  static TaskByIDCall taskByIDCall = TaskByIDCall();
  static DevUpdationLIStCall devUpdationLIStCall = DevUpdationLIStCall();
  static TaskDevApprovalLIStCall taskDevApprovalLIStCall =
      TaskDevApprovalLIStCall();
  static TaskDevReqstLIStCopyCall taskDevReqstLIStCopyCall =
      TaskDevReqstLIStCopyCall();
  static StatusCall statusCall = StatusCall();
  static UpdateTaskCall updateTaskCall = UpdateTaskCall();
  static TaskDeviationRequestCall taskDeviationRequestCall =
      TaskDeviationRequestCall();
  static ReportCall reportCall = ReportCall();
}

class DashboardCall {
  Future<ApiCallResponse> call({
    String? flag = 'GETTASKDETAILS',
    String? empID = '',
    String? speci = '0',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard',
      apiUrl:
          '${TaskManagementGroup.baseUrl}/tasks/GetTaskDetails/${flag}/${empID}/${speci}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic taskId(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].task_id''',
        true,
      );
  dynamic subTaskID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].sub_task_id''',
        true,
      );
  dynamic subject(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].subject''',
        true,
      );
  dynamic assigndate(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assign_dt''',
        true,
      );
  dynamic targetDate(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].target_dt''',
        true,
      );
  dynamic asgnedEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assigned_empcode''',
        true,
      );
  dynamic asgnedEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Assigned_Employ''',
        true,
      );
  dynamic requestedEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Requested_Empcode''',
        true,
      );
  dynamic requestedEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].requested_employ''',
        true,
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].status''',
        true,
      );
  dynamic reqstType(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].req_type''',
        true,
      );
  dynamic priority(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].priority''',
        true,
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].content''',
        true,
      );
}

class DashboardCopyCall {
  Future<ApiCallResponse> call({
    String? flag = 'GETTASKDETAILS',
    String? empID = '',
    String? speci = '0',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard Copy',
      apiUrl:
          '${TaskManagementGroup.baseUrl}/tasks/GetTaskDetails/${flag}/${empID}/${speci}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic taskId(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].task_id''',
        true,
      );
  dynamic subTaskID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].sub_task_id''',
        true,
      );
  dynamic subject(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].subject''',
        true,
      );
  dynamic assigndate(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assign_dt''',
        true,
      );
  dynamic targetDate(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].target_dt''',
        true,
      );
  dynamic asgnedEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assigned_empcode''',
        true,
      );
  dynamic asgnedEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Assigned_Employ''',
        true,
      );
  dynamic requestedEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Requested_Empcode''',
        true,
      );
  dynamic requestedEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].requested_employ''',
        true,
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].status''',
        true,
      );
  dynamic reqstType(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].req_type''',
        true,
      );
  dynamic priority(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].priority''',
        true,
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].content''',
        true,
      );
}

class NameCall {
  Future<ApiCallResponse> call({
    String? flag = 'GETTASKEMPLIST',
    String? empid = '',
    String? spec = '0',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Name',
      apiUrl:
          '${TaskManagementGroup.baseUrl}/tasks/GetTaskEmployee/${flag}/${empid}/${spec}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic empID(dynamic response) => getJsonField(
        response,
        r'''$.employee[:].emp_code''',
        true,
      );
  dynamic empName(dynamic response) => getJsonField(
        response,
        r'''$.employee[:].empname''',
        true,
      );
}

class RequestTypeCall {
  Future<ApiCallResponse> call({
    String? flag = 'GETTASKREQTYPE',
    String? spec1 = '0',
    String? spec2 = '0',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'RequestType',
      apiUrl:
          '${TaskManagementGroup.baseUrl}/tasks/GetTaskRequestType/${flag}/${spec1}/${spec2}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic reqID(dynamic response) => getJsonField(
        response,
        r'''$.requestType[:].req_type_id''',
        true,
      );
  dynamic reqType(dynamic response) => getJsonField(
        response,
        r'''$.requestType[:].req_type''',
        true,
      );
}

class PriorityCall {
  Future<ApiCallResponse> call({
    String? flag = 'GETTASKPRIORITY',
    String? spec1 = '0',
    String? spec2 = '0',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Priority',
      apiUrl:
          '${TaskManagementGroup.baseUrl}/tasks/GetTaskPriority/${flag}/${spec1}/${spec2}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic priorityID(dynamic response) => getJsonField(
        response,
        r'''$.priority[:].priority_Id''',
        true,
      );
  dynamic priority(dynamic response) => getJsonField(
        response,
        r'''$.priority[:].priority''',
        true,
      );
}

class CreateCall {
  Future<ApiCallResponse> call({
    String? flag = '',
    String? pagevalue = '',
    String? paraVlalue = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "FLAG": "${flag}",
  "PAGEVALUE": "${pagevalue}",
  "paraVlalue": "${paraVlalue}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create',
      apiUrl: '${TaskManagementGroup.baseUrl}/tasks/InsertUpdateTask',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$.response[:].resflag''',
      );
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.response[:].resmsg''',
      );
}

class ApproveListCall {
  Future<ApiCallResponse> call({
    String? flag = 'GETTASKDETAILS',
    String? empId = '',
    String? spec = '0',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApproveList',
      apiUrl:
          '${TaskManagementGroup.baseUrl}/tasks/GetTaskDetails/${flag}/${empId}/${spec}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic tskId(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].task_id''',
        true,
      );
  dynamic subTskID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].sub_task_id''',
        true,
      );
  dynamic subject(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].subject''',
        true,
      );
  dynamic assgnDT(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assign_dt''',
        true,
      );
  dynamic targtDT(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].target_dt''',
        true,
      );
  dynamic assgndEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assigned_empcode''',
        true,
      );
  dynamic assgndEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Assigned_Employ''',
        true,
      );
  dynamic reqstEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Requested_Empcode''',
        true,
      );
  dynamic reqstEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].requested_employ''',
        true,
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].status''',
        true,
      );
  dynamic reqType(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].req_type''',
        true,
      );
  dynamic priority(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].priority''',
        true,
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].content''',
        true,
      );
}

class TaskApproveCall {
  Future<ApiCallResponse> call({
    String? flag = '',
    String? pagevalue = '',
    String? paraVlalue = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "flag": "${flag}",
  "Pagevalue": "${pagevalue}",
  "paraVlalue": "${paraVlalue}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TaskApprove',
      apiUrl: '${TaskManagementGroup.baseUrl}/tasks/InsertUpdateTask',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic msg(dynamic response) => getJsonField(
        response,
        r'''$.response[:].resmsg''',
      );
}

class FeedbackApproveCall {
  Future<ApiCallResponse> call({
    String? flag = '',
    String? pagevalue = '',
    String? paraVlalue = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "flag": "${flag}",
  "Pagevalue": "${pagevalue}",
  "paraVlalue": "${paraVlalue}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FeedbackApprove',
      apiUrl: '${TaskManagementGroup.baseUrl}/tasks/InsertUpdateTask',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic msg(dynamic response) => getJsonField(
        response,
        r'''$.response[:].resmsg''',
      );
}

class TaskByIDCall {
  Future<ApiCallResponse> call({
    String? flag = '',
    String? taskID = '',
    String? spec = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TaskByID',
      apiUrl:
          '${TaskManagementGroup.baseUrl}/tasks/GetTaskDetails/${flag}/${taskID}/${spec}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic taskID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].task_id''',
      );
  dynamic subtaskID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].sub_task_id''',
      );
  dynamic subject(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].subject''',
      );
  dynamic asgnDT(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assign_dt''',
      );
  dynamic targtDT(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].target_dt''',
      );
  dynamic asgnedEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assigned_empcode''',
      );
  dynamic asgnedEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Assigned_Employ''',
      );
  dynamic reqstdEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Requested_Empcode''',
      );
  dynamic reqstdEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].requested_employ''',
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].status''',
      );
  dynamic reqtype(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].req_type''',
      );
  dynamic priority(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].priority''',
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].content''',
      );
  dynamic revisedDate(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Rev_reqdate''',
      );
  dynamic revisedReason(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Req_reason''',
      );
}

class DevUpdationLIStCall {
  Future<ApiCallResponse> call({
    String? flag = '',
    String? empID = '',
    String? spec = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'DevUpdationLISt',
      apiUrl:
          '${TaskManagementGroup.baseUrl}/tasks/GetTaskDetails/${flag}/${empID}/${spec}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic tskID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].task_id''',
        true,
      );
  dynamic subTaskID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].sub_task_id''',
        true,
      );
  dynamic subject(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].subject''',
        true,
      );
  dynamic asgnedDT(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assign_dt''',
        true,
      );
  dynamic targtDT(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].target_dt''',
        true,
      );
  dynamic asgndEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assigned_empcode''',
        true,
      );
  dynamic asgnedEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Assigned_Employ''',
        true,
      );
  dynamic reqstEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Requested_Empcode''',
        true,
      );
  dynamic reqstEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].requested_employ''',
        true,
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].status''',
        true,
      );
  dynamic reqstType(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].req_type''',
        true,
      );
  dynamic priority(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].priority''',
        true,
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].content''',
        true,
      );
}

class TaskDevApprovalLIStCall {
  Future<ApiCallResponse> call({
    String? flag = '',
    String? empID = '',
    String? spec = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TaskDevApprovalLISt',
      apiUrl:
          '${TaskManagementGroup.baseUrl}/tasks/GetTaskDetails/${flag}/${empID}/${spec}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic tskID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].task_id''',
        true,
      );
  dynamic subTaskID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].sub_task_id''',
        true,
      );
  dynamic subject(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].subject''',
        true,
      );
  dynamic asgnDate(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assign_dt''',
        true,
      );
  dynamic targtDT(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].target_dt''',
        true,
      );
  dynamic asgndEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assigned_empcode''',
        true,
      );
  dynamic asgnedEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Assigned_Employ''',
        true,
      );
  dynamic reqstEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Requested_Empcode''',
        true,
      );
  dynamic reqstEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].requested_employ''',
        true,
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].status''',
        true,
      );
  dynamic reqstType(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].req_type''',
        true,
      );
  dynamic priority(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].priority''',
        true,
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].content''',
        true,
      );
  dynamic revisedDate(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Rev_reqdate''',
        true,
      );
  dynamic revisedReason(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Req_reason''',
        true,
      );
}

class TaskDevReqstLIStCopyCall {
  Future<ApiCallResponse> call({
    String? flag = '',
    String? empID = '',
    String? spec = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TaskDevReqstLISt Copy',
      apiUrl:
          '${TaskManagementGroup.baseUrl}/tasks/GetTaskDetails/${flag}/${empID}/${spec}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic tskID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].task_id''',
        true,
      );
  dynamic subTaskID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].sub_task_id''',
        true,
      );
  dynamic subject(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].subject''',
        true,
      );
  dynamic asgnedDT(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assign_dt''',
        true,
      );
  dynamic targtDT(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].target_dt''',
        true,
      );
  dynamic asgndEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assigned_empcode''',
        true,
      );
  dynamic asgnedEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Assigned_Employ''',
        true,
      );
  dynamic reqstEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Requested_Empcode''',
        true,
      );
  dynamic reqstEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].requested_employ''',
        true,
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].status''',
        true,
      );
  dynamic reqstType(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].req_type''',
        true,
      );
  dynamic priority(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].priority''',
        true,
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].content''',
        true,
      );
}

class StatusCall {
  Future<ApiCallResponse> call({
    String? flag = 'GETTASKSTATUS',
    String? spec1 = '0',
    String? spec2 = '0',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'status',
      apiUrl:
          '${TaskManagementGroup.baseUrl}/tasks/GetTaskStatus/${flag}/${spec1}/${spec2}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic statusID(dynamic response) => getJsonField(
        response,
        r'''$.status[:].status_id''',
        true,
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status[:].status''',
        true,
      );
}

class UpdateTaskCall {
  Future<ApiCallResponse> call({
    String? flag = '',
    String? pagevalue = '',
    String? paraVlalue = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "flag": "${flag}",
  "Pagevalue": "${pagevalue}",
  "paraVlalue": "${paraVlalue}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateTask',
      apiUrl: '${TaskManagementGroup.baseUrl}/tasks/InsertUpdateTask',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic msg(dynamic response) => getJsonField(
        response,
        r'''$.response[:].resmsg''',
      );
  dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$.response[:].resflag''',
      );
}

class TaskDeviationRequestCall {
  Future<ApiCallResponse> call({
    String? flag = '',
    String? pagevalue = '',
    String? paraVlalue = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "flag": "${flag}",
  "Pagevalue": "${pagevalue}",
  "paraVlalue": "${paraVlalue}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TaskDeviationRequest',
      apiUrl: '${TaskManagementGroup.baseUrl}/tasks/InsertUpdateTask',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$.response[:].resflag''',
      );
  dynamic msg(dynamic response) => getJsonField(
        response,
        r'''$.response[:].resmsg''',
      );
}

class ReportCall {
  Future<ApiCallResponse> call({
    String? flag = '',
    String? pagevalue = '',
    String? paravalue = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Report',
      apiUrl:
          '${TaskManagementGroup.baseUrl}/reports/GetFilterdata/${flag}/${pagevalue}/${paravalue}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic taskID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].task_id''',
        true,
      );
  dynamic subTaskID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].sub_task_id''',
        true,
      );
  dynamic subject(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].subject''',
        true,
      );
  dynamic asgnDT(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assign_dt''',
        true,
      );
  dynamic trgtDT(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].target_dt''',
        true,
      );
  dynamic agndEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].assigned_empcode''',
        true,
      );
  dynamic asgnedEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Assigned_Employ''',
        true,
      );
  dynamic reqstdEmpID(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Requested_Empcode''',
        true,
      );
  dynamic reqstdEmp(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].requested_employ''',
        true,
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].status''',
        true,
      );
  dynamic reqType(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].req_type''',
        true,
      );
  dynamic priority(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].priority''',
        true,
      );
  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].content''',
        true,
      );
  dynamic revReqDt(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Rev_reqdate''',
        true,
      );
  dynamic revReason(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].Req_reason''',
        true,
      );
  dynamic approveRemark(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].APPROVE_RMK''',
        true,
      );
}

/// End TaskManagement Group Code

class PasswordCheckCall {
  static Future<ApiCallResponse> call({
    String? empID = '',
    String? pswd = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Password Check',
      apiUrl:
          'https://uatapp.manappuram.net/GlobalApi/api/helper/CheckCredentials/${empID}/${pswd}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$.flag''',
      );
}

class EmpDetailsCall {
  static Future<ApiCallResponse> call({
    String? employeeByCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'EmpDetails',
      apiUrl:
          'https://uatapp.manappuram.net/PunchApi/api/employee/EmployeeByCode/${employeeByCode}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic empName(dynamic response) => getJsonField(
        response,
        r'''$.empName''',
      );
}

class CreationSMSCall {
  static Future<ApiCallResponse> call({
    String? accId = '',
    String? pNumber = '',
    String? message = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "accId": "${accId}",
  "pNumber": "${pNumber}",
  "message": "${message}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Creation SMS',
      apiUrl: 'https://uatapp.manappuram.net/GlobalApi/api/helper/SendSMS',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class CreationEmailCall {
  static Future<ApiCallResponse> call({
    String? mailid = '',
    String? subject = '',
    String? message = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "mailid": "${mailid}",
  "subject": "${subject}",
  "message": "${message}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Creation Email',
      apiUrl: 'https://uatapp.manappuram.net/GlobalApi/api/helper/sendMail',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class SysCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'sys',
      apiUrl: 'http://localhost:8080/values/GetBatteryStatus',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TokenGenerationCall {
  static Future<ApiCallResponse> call({
    String? empcode = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "empcode": "${empcode}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Token Generation',
      apiUrl:
          'https://uatapp.manappuram.net/GlobalApi/api/authentication/AuthenticateUser',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.Token''',
      );
}

class TokenExpireCall {
  static Future<ApiCallResponse> call({
    String? empcode = '',
    String? password = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TokenExpire',
      apiUrl:
          'https://uatapp.manappuram.net/GlobalApi/api/helper/CheckCredentials/${empcode}/${password}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$.flag''',
      );
}

class HextobaseCall {
  static Future<ApiCallResponse> call({
    String? indata = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Indata": "${indata}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'hextobase',
      apiUrl: 'https://uatapp.manappuram.net/DecryptionApi/api/dec/hextobase',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic result(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
}

class SessionValidationCall {
  static Future<ApiCallResponse> call({
    String? sessionID = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SessionValidation',
      apiUrl:
          'https://uatapp.manappuram.net/PortalApi/api/portal/SessionValidation/${sessionID}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic count(dynamic response) => getJsonField(
        response,
        r'''$.COUNT''',
      );
}

class ChartApiCall {
  static Future<ApiCallResponse> call({
    String? flag = '',
    String? pagevalue = '',
    String? paravalue = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CHART API',
      apiUrl:
          'https://uatapp.manappuram.net/MenuApi/api/MenuApi/GetMenuData/${flag}/${pagevalue}/${paravalue}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic yaxis(dynamic response) => getJsonField(
        response,
        r'''$.MenuResDto[:].SUBHEAD''',
        true,
      );
  static dynamic xaxis(dynamic response) => getJsonField(
        response,
        r'''$.MenuResDto[:].SUBID''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
