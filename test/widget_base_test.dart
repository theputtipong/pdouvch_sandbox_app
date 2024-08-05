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

  group('Intergration test with load JSON data from assets', () {
    setUpAll(() async {
      masterData = await loadJsonData();

      for (var element in masterData.entries) {
        Map<TypeWidget, int>? tempType;
        var type = typeEnumWidget(element.value);
        if (countType.containsKey(type)) {
          countType[type] = countType[type]! + 1;
        } else {
          tempType = {type: 1};
        }
        if (tempType != null && tempType.isNotEmpty) {
          countType.addEntries(tempType.entries);
        }
      }
    });

    test('verifies that the JSON data is not empty and countType is not empty', () {
      expect(masterData, isNotEmpty);
      expect(countType, isNotEmpty);
    });

    log("countType: ${countType.entries.map((e) => "${e.key}: ${e.value}").join('\n')}");

    testWidgets('should display a string of text', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ListView.builder(
              itemCount: masterData.length,
              itemBuilder: (context, index) {
                return typeWidget(masterData.entries.elementAt(index).value);
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
