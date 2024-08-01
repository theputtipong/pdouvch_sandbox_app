// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Map masterData = {};
  Map<TypeWidget, int> countType = {};
  group('JSONS Load Test Base Widget', () {
    test('should load JSONS data from assets file name base_widget_test.json', () async {
      masterData = await loadJsonData();
      expect(masterData, isNotEmpty);
    });

    testWidgets('should display a string of text', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ListView.builder(
              itemCount: countType.length,
              itemBuilder: (context, index) {
                return typeEnumWidget(masterData.entries.elementAt(index).value);
              },
            ),
          ),
        ),
      );

      expect(find.byType(Text), findsNWidgets(masterData.length));
    });
  });
}

Future<Map> loadJsonData() async {
  final String response = await rootBundle.loadString('assets/jsons/base_widget_test.json');
  Map dataTest = {};
  var data = jsonDecode(response);
  if (data.isEmpty) {
    throwsA(isEmpty);
  } else {
    dataTest.addAll(data);
  }
  return data;
}

enum TypeWidget {
  unknow,
  text,
  dateTimePicker,
  dropdown,
  dropdownMultiSelect,
}

TypeWidget typeEnumWidget(value) {
  TypeWidget result = TypeWidget.unknow;
  if (value is String) {
    log('The value is a String.');
    result = TypeWidget.text;
  } else if (value is int) {
    log('The value is an int.');
    result = TypeWidget.unknow;
  } else if (value is double) {
    log('The value is a double.');
    result = TypeWidget.unknow;
  } else if (value is bool) {
    log('The value is a bool.');
    result = TypeWidget.unknow;
  } else if (value is List) {
    log('The value is a List.');
    result = TypeWidget.unknow;
  } else if (value is Object) {
    log('The value is a Object.');
    result = TypeWidget.unknow;
  } else if (value is DateTime) {
    log('The value is a DateTime.');
    result = TypeWidget.unknow;
  } else {
    log('The value is of an unknown type.');
    result = TypeWidget.unknow;
  }
  return result;
}

Widget typeWidget(value) {
  Widget result = const SizedBox();
  switch (typeEnumWidget(value)) {
    case TypeWidget.text:
      result = Text(value.toString());
      break;
    case TypeWidget.dateTimePicker:
      result = Text(value.toString());
      break;
    case TypeWidget.dropdown:
      result = Text(value.toString());
      break;
    case TypeWidget.dropdownMultiSelect:
      result = Text(value.toString());
      break;
    default:
      result = Text(value.toString());
      break;
  }
  return result;
}
