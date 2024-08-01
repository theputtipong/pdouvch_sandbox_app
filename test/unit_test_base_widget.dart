// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'widget_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('JSONS Load Test Base Widget', () {
    test('should load JSONS data from assets file name base_widget_test.json', () async {
      final data = await loadJsonFieldSettingData();
      expect(data, isNotEmpty);
    });
  });
}

Future<Map<String, dynamic>> loadJsonData() async {
  final String response = await rootBundle.loadString('assets/jsons/base_widget_test.json');
  Map<String, dynamic> dataTest = {};
  var data = jsonDecode(response);
  if (data == null) {
    throwsA(isEmpty);
  } else {
    dataTest.addAll(jsonDecode(data));
  }
  return data;
}
