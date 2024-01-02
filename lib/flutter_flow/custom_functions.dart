import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

List<String>? split(String? input) {
  var string = input.toString();
  final splitted = string.split('|');
  List<String> asd = splitted;
  return asd;
}

List<String>? splitEx(String? input) {
  var string = input.toString();
  final splitted = string.split('!');
  List<String> asd = splitted;
  return asd;
}

List<String>? splitstarCopy(String? input) {
  var string = input.toString();
  final splitted = string.split('*');
  List<String> asd = splitted;
  return asd;
}
