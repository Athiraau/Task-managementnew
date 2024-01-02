// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartvalueStruct extends BaseStruct {
  ChartvalueStruct({
    List<int>? xvalue,
    List<int>? yvalue,
  })  : _xvalue = xvalue,
        _yvalue = yvalue;

  // "xvalue" field.
  List<int>? _xvalue;
  List<int> get xvalue => _xvalue ?? const [];
  set xvalue(List<int>? val) => _xvalue = val;
  void updateXvalue(Function(List<int>) updateFn) => updateFn(_xvalue ??= []);
  bool hasXvalue() => _xvalue != null;

  // "yvalue" field.
  List<int>? _yvalue;
  List<int> get yvalue => _yvalue ?? const [];
  set yvalue(List<int>? val) => _yvalue = val;
  void updateYvalue(Function(List<int>) updateFn) => updateFn(_yvalue ??= []);
  bool hasYvalue() => _yvalue != null;

  static ChartvalueStruct fromMap(Map<String, dynamic> data) =>
      ChartvalueStruct(
        xvalue: getDataList(data['xvalue']),
        yvalue: getDataList(data['yvalue']),
      );

  static ChartvalueStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ChartvalueStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'xvalue': _xvalue,
        'yvalue': _yvalue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'xvalue': serializeParam(
          _xvalue,
          ParamType.int,
          true,
        ),
        'yvalue': serializeParam(
          _yvalue,
          ParamType.int,
          true,
        ),
      }.withoutNulls;

  static ChartvalueStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChartvalueStruct(
        xvalue: deserializeParam<int>(
          data['xvalue'],
          ParamType.int,
          true,
        ),
        yvalue: deserializeParam<int>(
          data['yvalue'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'ChartvalueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChartvalueStruct &&
        listEquality.equals(xvalue, other.xvalue) &&
        listEquality.equals(yvalue, other.yvalue);
  }

  @override
  int get hashCode => const ListEquality().hash([xvalue, yvalue]);
}

ChartvalueStruct createChartvalueStruct() => ChartvalueStruct();
