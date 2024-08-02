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

    for (var element in masterData.entries) {
      Map<TypeWidget, int>? tempType;
      if (countType.isEmpty) {
        tempType = {typeEnumWidget(element.value): 1};
      } else {
        if (countType.containsKey(typeEnumWidget(element.value))) {
          countType[typeEnumWidget(element.value)] = countType[typeEnumWidget(element.value)]! + 1;
        } else {
          tempType = {typeEnumWidget(element.value): 1};
        }
      }
    }

    // testWidgets('should display a string of text', (WidgetTester tester) async {
    //   await tester.pumpWidget(
    //     MaterialApp(
    //       home: Scaffold(
    //         body: ListView.builder(
    //           itemCount: countType.length,
    //           itemBuilder: (context, index) {
    //             return typeEnumWidget(masterData.entries.elementAt(index).value);
    //           },
    //         ),
    //       ),
    //     ),
    //   );
    //   expect(find.byType(Text), findsNWidgets(masterData.length));
    // });
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
  textField,
  dateTimePicker,
  dropdown,
  dropdownMultiSelect,
}

TypeWidget typeEnumWidget(value) {
  TypeWidget result = TypeWidget.unknow;
  if (value is String) {
    log('The value is a String.');
    if (DateTime.tryParse(value) != null) {
      result = TypeWidget.dateTimePicker;
    } else {
      result = TypeWidget.textField;
    }
  } else if (value is List) {
    log('The value is a List.');
    if (value is List<Object>) {
      result = TypeWidget.dropdownMultiSelect;
    } else {
      result = TypeWidget.dropdown;
    }
  } else {
    log('This type of value not support yet. [int, double, bool, datetime, object]');
    result = TypeWidget.unknow;
  }
  return result;
}

Widget typeWidget(value) {
  Widget result = const SizedBox();
  switch (typeEnumWidget(value)) {
    case TypeWidget.textField:
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
