import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_chrt')) {
        try {
          final serializedData = prefs.getString('ff_chrt') ?? '{}';
          _chrt =
              ChartvalueStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _xaxis =
          prefs.getStringList('ff_xaxis')?.map(int.parse).toList() ?? _xaxis;
    });
    _safeInit(() {
      _yaxis =
          prefs.getStringList('ff_yaxis')?.map(int.parse).toList() ?? _yaxis;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _LoginID = '';
  String get LoginID => _LoginID;
  set LoginID(String _value) {
    _LoginID = _value;
  }

  String _Token = '';
  String get Token => _Token;
  set Token(String _value) {
    _Token = _value;
  }

  String _PswdChckFLAG = '';
  String get PswdChckFLAG => _PswdChckFLAG;
  set PswdChckFLAG(String _value) {
    _PswdChckFLAG = _value;
  }

  String _LoginEmp = '';
  String get LoginEmp => _LoginEmp;
  set LoginEmp(String _value) {
    _LoginEmp = _value;
  }

  List<String> _Name = [];
  List<String> get Name => _Name;
  set Name(List<String> _value) {
    _Name = _value;
  }

  void addToName(String _value) {
    _Name.add(_value);
  }

  void removeFromName(String _value) {
    _Name.remove(_value);
  }

  void removeAtIndexFromName(int _index) {
    _Name.removeAt(_index);
  }

  void updateNameAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _Name[_index] = updateFn(_Name[_index]);
  }

  void insertAtIndexInName(int _index, String _value) {
    _Name.insert(_index, _value);
  }

  List<String> _NameID = [];
  List<String> get NameID => _NameID;
  set NameID(List<String> _value) {
    _NameID = _value;
  }

  void addToNameID(String _value) {
    _NameID.add(_value);
  }

  void removeFromNameID(String _value) {
    _NameID.remove(_value);
  }

  void removeAtIndexFromNameID(int _index) {
    _NameID.removeAt(_index);
  }

  void updateNameIDAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _NameID[_index] = updateFn(_NameID[_index]);
  }

  void insertAtIndexInNameID(int _index, String _value) {
    _NameID.insert(_index, _value);
  }

  List<String> _RequestType = [];
  List<String> get RequestType => _RequestType;
  set RequestType(List<String> _value) {
    _RequestType = _value;
  }

  void addToRequestType(String _value) {
    _RequestType.add(_value);
  }

  void removeFromRequestType(String _value) {
    _RequestType.remove(_value);
  }

  void removeAtIndexFromRequestType(int _index) {
    _RequestType.removeAt(_index);
  }

  void updateRequestTypeAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _RequestType[_index] = updateFn(_RequestType[_index]);
  }

  void insertAtIndexInRequestType(int _index, String _value) {
    _RequestType.insert(_index, _value);
  }

  List<String> _RequestID = [];
  List<String> get RequestID => _RequestID;
  set RequestID(List<String> _value) {
    _RequestID = _value;
  }

  void addToRequestID(String _value) {
    _RequestID.add(_value);
  }

  void removeFromRequestID(String _value) {
    _RequestID.remove(_value);
  }

  void removeAtIndexFromRequestID(int _index) {
    _RequestID.removeAt(_index);
  }

  void updateRequestIDAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _RequestID[_index] = updateFn(_RequestID[_index]);
  }

  void insertAtIndexInRequestID(int _index, String _value) {
    _RequestID.insert(_index, _value);
  }

  List<String> _priority = [];
  List<String> get priority => _priority;
  set priority(List<String> _value) {
    _priority = _value;
  }

  void addToPriority(String _value) {
    _priority.add(_value);
  }

  void removeFromPriority(String _value) {
    _priority.remove(_value);
  }

  void removeAtIndexFromPriority(int _index) {
    _priority.removeAt(_index);
  }

  void updatePriorityAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _priority[_index] = updateFn(_priority[_index]);
  }

  void insertAtIndexInPriority(int _index, String _value) {
    _priority.insert(_index, _value);
  }

  List<String> _PriorityID = [];
  List<String> get PriorityID => _PriorityID;
  set PriorityID(List<String> _value) {
    _PriorityID = _value;
  }

  void addToPriorityID(String _value) {
    _PriorityID.add(_value);
  }

  void removeFromPriorityID(String _value) {
    _PriorityID.remove(_value);
  }

  void removeAtIndexFromPriorityID(int _index) {
    _PriorityID.removeAt(_index);
  }

  void updatePriorityIDAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _PriorityID[_index] = updateFn(_PriorityID[_index]);
  }

  void insertAtIndexInPriorityID(int _index, String _value) {
    _PriorityID.insert(_index, _value);
  }

  List<String> _creationmsgLIST = [];
  List<String> get creationmsgLIST => _creationmsgLIST;
  set creationmsgLIST(List<String> _value) {
    _creationmsgLIST = _value;
  }

  void addToCreationmsgLIST(String _value) {
    _creationmsgLIST.add(_value);
  }

  void removeFromCreationmsgLIST(String _value) {
    _creationmsgLIST.remove(_value);
  }

  void removeAtIndexFromCreationmsgLIST(int _index) {
    _creationmsgLIST.removeAt(_index);
  }

  void updateCreationmsgLISTAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _creationmsgLIST[_index] = updateFn(_creationmsgLIST[_index]);
  }

  void insertAtIndexInCreationmsgLIST(int _index, String _value) {
    _creationmsgLIST.insert(_index, _value);
  }

  String _trgtdate = '';
  String get trgtdate => _trgtdate;
  set trgtdate(String _value) {
    _trgtdate = _value;
  }

  String _approverRemark = '';
  String get approverRemark => _approverRemark;
  set approverRemark(String _value) {
    _approverRemark = _value;
  }

  String _subject = '';
  String get subject => _subject;
  set subject(String _value) {
    _subject = _value;
  }

  String _content = '';
  String get content => _content;
  set content(String _value) {
    _content = _value;
  }

  String _asgnedBy = '';
  String get asgnedBy => _asgnedBy;
  set asgnedBy(String _value) {
    _asgnedBy = _value;
  }

  String _ReqstType = '';
  String get ReqstType => _ReqstType;
  set ReqstType(String _value) {
    _ReqstType = _value;
  }

  String _ReqstDT = '';
  String get ReqstDT => _ReqstDT;
  set ReqstDT(String _value) {
    _ReqstDT = _value;
  }

  String _TrgtDt = '';
  String get TrgtDt => _TrgtDt;
  set TrgtDt(String _value) {
    _TrgtDt = _value;
  }

  String _Employee = '';
  String get Employee => _Employee;
  set Employee(String _value) {
    _Employee = _value;
  }

  List<String> _status = [];
  List<String> get status => _status;
  set status(List<String> _value) {
    _status = _value;
  }

  void addToStatus(String _value) {
    _status.add(_value);
  }

  void removeFromStatus(String _value) {
    _status.remove(_value);
  }

  void removeAtIndexFromStatus(int _index) {
    _status.removeAt(_index);
  }

  void updateStatusAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _status[_index] = updateFn(_status[_index]);
  }

  void insertAtIndexInStatus(int _index, String _value) {
    _status.insert(_index, _value);
  }

  List<String> _statusID = [];
  List<String> get statusID => _statusID;
  set statusID(List<String> _value) {
    _statusID = _value;
  }

  void addToStatusID(String _value) {
    _statusID.add(_value);
  }

  void removeFromStatusID(String _value) {
    _statusID.remove(_value);
  }

  void removeAtIndexFromStatusID(int _index) {
    _statusID.removeAt(_index);
  }

  void updateStatusIDAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _statusID[_index] = updateFn(_statusID[_index]);
  }

  void insertAtIndexInStatusID(int _index, String _value) {
    _statusID.insert(_index, _value);
  }

  String _tskPriority = '';
  String get tskPriority => _tskPriority;
  set tskPriority(String _value) {
    _tskPriority = _value;
  }

  String _DevPercent = '';
  String get DevPercent => _DevPercent;
  set DevPercent(String _value) {
    _DevPercent = _value;
  }

  String _DevStatus = '';
  String get DevStatus => _DevStatus;
  set DevStatus(String _value) {
    _DevStatus = _value;
  }

  String _DevRemark = '';
  String get DevRemark => _DevRemark;
  set DevRemark(String _value) {
    _DevRemark = _value;
  }

  String _RevisedDate = '';
  String get RevisedDate => _RevisedDate;
  set RevisedDate(String _value) {
    _RevisedDate = _value;
  }

  String _reportDatepicker1 = '';
  String get reportDatepicker1 => _reportDatepicker1;
  set reportDatepicker1(String _value) {
    _reportDatepicker1 = _value;
  }

  String _reportdatepicker2 = '';
  String get reportdatepicker2 => _reportdatepicker2;
  set reportdatepicker2(String _value) {
    _reportdatepicker2 = _value;
  }

  List<String> _task = [];
  List<String> get task => _task;
  set task(List<String> _value) {
    _task = _value;
  }

  void addToTask(String _value) {
    _task.add(_value);
  }

  void removeFromTask(String _value) {
    _task.remove(_value);
  }

  void removeAtIndexFromTask(int _index) {
    _task.removeAt(_index);
  }

  void updateTaskAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _task[_index] = updateFn(_task[_index]);
  }

  void insertAtIndexInTask(int _index, String _value) {
    _task.insert(_index, _value);
  }

  List<String> _taskid = [];
  List<String> get taskid => _taskid;
  set taskid(List<String> _value) {
    _taskid = _value;
  }

  void addToTaskid(String _value) {
    _taskid.add(_value);
  }

  void removeFromTaskid(String _value) {
    _taskid.remove(_value);
  }

  void removeAtIndexFromTaskid(int _index) {
    _taskid.removeAt(_index);
  }

  void updateTaskidAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _taskid[_index] = updateFn(_taskid[_index]);
  }

  void insertAtIndexInTaskid(int _index, String _value) {
    _taskid.insert(_index, _value);
  }

  String _DeviReason = '';
  String get DeviReason => _DeviReason;
  set DeviReason(String _value) {
    _DeviReason = _value;
  }

  String _searchtsk = '';
  String get searchtsk => _searchtsk;
  set searchtsk(String _value) {
    _searchtsk = _value;
  }

  String _decrypt = '';
  String get decrypt => _decrypt;
  set decrypt(String _value) {
    _decrypt = _value;
  }

  List<String> _decryptList = [];
  List<String> get decryptList => _decryptList;
  set decryptList(List<String> _value) {
    _decryptList = _value;
  }

  void addToDecryptList(String _value) {
    _decryptList.add(_value);
  }

  void removeFromDecryptList(String _value) {
    _decryptList.remove(_value);
  }

  void removeAtIndexFromDecryptList(int _index) {
    _decryptList.removeAt(_index);
  }

  void updateDecryptListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _decryptList[_index] = updateFn(_decryptList[_index]);
  }

  void insertAtIndexInDecryptList(int _index, String _value) {
    _decryptList.insert(_index, _value);
  }

  String _branchiddecrypt = '';
  String get branchiddecrypt => _branchiddecrypt;
  set branchiddecrypt(String _value) {
    _branchiddecrypt = _value;
  }

  String _branchnamedecrypt = '';
  String get branchnamedecrypt => _branchnamedecrypt;
  set branchnamedecrypt(String _value) {
    _branchnamedecrypt = _value;
  }

  String _useriddecrypt = '';
  String get useriddecrypt => _useriddecrypt;
  set useriddecrypt(String _value) {
    _useriddecrypt = _value;
  }

  String _ipaddressdecrypt = '';
  String get ipaddressdecrypt => _ipaddressdecrypt;
  set ipaddressdecrypt(String _value) {
    _ipaddressdecrypt = _value;
  }

  String _empnamedecrypt = '';
  String get empnamedecrypt => _empnamedecrypt;
  set empnamedecrypt(String _value) {
    _empnamedecrypt = _value;
  }

  String _punchbranchdecrypt = '';
  String get punchbranchdecrypt => _punchbranchdecrypt;
  set punchbranchdecrypt(String _value) {
    _punchbranchdecrypt = _value;
  }

  String _accessiddecrypt = '';
  String get accessiddecrypt => _accessiddecrypt;
  set accessiddecrypt(String _value) {
    _accessiddecrypt = _value;
  }

  String _roleiddecrypt = '';
  String get roleiddecrypt => _roleiddecrypt;
  set roleiddecrypt(String _value) {
    _roleiddecrypt = _value;
  }

  String _reportFromdate = '';
  String get reportFromdate => _reportFromdate;
  set reportFromdate(String _value) {
    _reportFromdate = _value;
  }

  String _reportTodate = '';
  String get reportTodate => _reportTodate;
  set reportTodate(String _value) {
    _reportTodate = _value;
  }

  String _reportpriority = '';
  String get reportpriority => _reportpriority;
  set reportpriority(String _value) {
    _reportpriority = _value;
  }

  String _reportStatus = '';
  String get reportStatus => _reportStatus;
  set reportStatus(String _value) {
    _reportStatus = _value;
  }

  String _reportReqstType = '';
  String get reportReqstType => _reportReqstType;
  set reportReqstType(String _value) {
    _reportReqstType = _value;
  }

  String _reportHead = '';
  String get reportHead => _reportHead;
  set reportHead(String _value) {
    _reportHead = _value;
  }

  String _reportTechlead = '';
  String get reportTechlead => _reportTechlead;
  set reportTechlead(String _value) {
    _reportTechlead = _value;
  }

  String _pswd = '';
  String get pswd => _pswd;
  set pswd(String _value) {
    _pswd = _value;
  }

  dynamic _reporrt;
  dynamic get reporrt => _reporrt;
  set reporrt(dynamic _value) {
    _reporrt = _value;
  }

  dynamic _dashboard;
  dynamic get dashboard => _dashboard;
  set dashboard(dynamic _value) {
    _dashboard = _value;
  }

  String _SearStatus = '';
  String get SearStatus => _SearStatus;
  set SearStatus(String _value) {
    _SearStatus = _value;
  }

  List<String> _loginIpAdd = [];
  List<String> get loginIpAdd => _loginIpAdd;
  set loginIpAdd(List<String> _value) {
    _loginIpAdd = _value;
  }

  void addToLoginIpAdd(String _value) {
    _loginIpAdd.add(_value);
  }

  void removeFromLoginIpAdd(String _value) {
    _loginIpAdd.remove(_value);
  }

  void removeAtIndexFromLoginIpAdd(int _index) {
    _loginIpAdd.removeAt(_index);
  }

  void updateLoginIpAddAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _loginIpAdd[_index] = updateFn(_loginIpAdd[_index]);
  }

  void insertAtIndexInLoginIpAdd(int _index, String _value) {
    _loginIpAdd.insert(_index, _value);
  }

  String _base64 = '';
  String get base64 => _base64;
  set base64(String _value) {
    _base64 = _value;
  }

  String _sessioncount = '';
  String get sessioncount => _sessioncount;
  set sessioncount(String _value) {
    _sessioncount = _value;
  }

  ChartvalueStruct _chart = ChartvalueStruct.fromSerializableMap(jsonDecode(
      '{\"xvalue\":\"[\\\"1\\\",\\\"2\\\",\\\"3\\\"]\",\"yvalue\":\"[\\\"40\\\",\\\"20\\\",\\\"70\\\"]\"}'));
  ChartvalueStruct get chart => _chart;
  set chart(ChartvalueStruct _value) {
    _chart = _value;
  }

  void updateChartStruct(Function(ChartvalueStruct) updateFn) {
    updateFn(_chart);
  }

  ChartvalueStruct _chrt = ChartvalueStruct();
  ChartvalueStruct get chrt => _chrt;
  set chrt(ChartvalueStruct _value) {
    _chrt = _value;
    prefs.setString('ff_chrt', _value.serialize());
  }

  void updateChrtStruct(Function(ChartvalueStruct) updateFn) {
    updateFn(_chrt);
    prefs.setString('ff_chrt', _chrt.serialize());
  }

  List<int> _xaxis = [];
  List<int> get xaxis => _xaxis;
  set xaxis(List<int> _value) {
    _xaxis = _value;
    prefs.setStringList('ff_xaxis', _value.map((x) => x.toString()).toList());
  }

  void addToXaxis(int _value) {
    _xaxis.add(_value);
    prefs.setStringList('ff_xaxis', _xaxis.map((x) => x.toString()).toList());
  }

  void removeFromXaxis(int _value) {
    _xaxis.remove(_value);
    prefs.setStringList('ff_xaxis', _xaxis.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromXaxis(int _index) {
    _xaxis.removeAt(_index);
    prefs.setStringList('ff_xaxis', _xaxis.map((x) => x.toString()).toList());
  }

  void updateXaxisAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _xaxis[_index] = updateFn(_xaxis[_index]);
    prefs.setStringList('ff_xaxis', _xaxis.map((x) => x.toString()).toList());
  }

  void insertAtIndexInXaxis(int _index, int _value) {
    _xaxis.insert(_index, _value);
    prefs.setStringList('ff_xaxis', _xaxis.map((x) => x.toString()).toList());
  }

  List<int> _yaxis = [];
  List<int> get yaxis => _yaxis;
  set yaxis(List<int> _value) {
    _yaxis = _value;
    prefs.setStringList('ff_yaxis', _value.map((x) => x.toString()).toList());
  }

  void addToYaxis(int _value) {
    _yaxis.add(_value);
    prefs.setStringList('ff_yaxis', _yaxis.map((x) => x.toString()).toList());
  }

  void removeFromYaxis(int _value) {
    _yaxis.remove(_value);
    prefs.setStringList('ff_yaxis', _yaxis.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromYaxis(int _index) {
    _yaxis.removeAt(_index);
    prefs.setStringList('ff_yaxis', _yaxis.map((x) => x.toString()).toList());
  }

  void updateYaxisAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _yaxis[_index] = updateFn(_yaxis[_index]);
    prefs.setStringList('ff_yaxis', _yaxis.map((x) => x.toString()).toList());
  }

  void insertAtIndexInYaxis(int _index, int _value) {
    _yaxis.insert(_index, _value);
    prefs.setStringList('ff_yaxis', _yaxis.map((x) => x.toString()).toList());
  }

  List<int> _xxx = [1, 2, 3, 4];
  List<int> get xxx => _xxx;
  set xxx(List<int> _value) {
    _xxx = _value;
  }

  void addToXxx(int _value) {
    _xxx.add(_value);
  }

  void removeFromXxx(int _value) {
    _xxx.remove(_value);
  }

  void removeAtIndexFromXxx(int _index) {
    _xxx.removeAt(_index);
  }

  void updateXxxAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _xxx[_index] = updateFn(_xxx[_index]);
  }

  void insertAtIndexInXxx(int _index, int _value) {
    _xxx.insert(_index, _value);
  }

  List<int> _yyy = [10, 30, 70, 20];
  List<int> get yyy => _yyy;
  set yyy(List<int> _value) {
    _yyy = _value;
  }

  void addToYyy(int _value) {
    _yyy.add(_value);
  }

  void removeFromYyy(int _value) {
    _yyy.remove(_value);
  }

  void removeAtIndexFromYyy(int _index) {
    _yyy.removeAt(_index);
  }

  void updateYyyAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _yyy[_index] = updateFn(_yyy[_index]);
  }

  void insertAtIndexInYyy(int _index, int _value) {
    _yyy.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
