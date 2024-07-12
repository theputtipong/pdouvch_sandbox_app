// This is an example Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
//
// Visit https://flutter.dev/docs/cookbook/testing/widget/introduction for
// more information about Widget testing.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'field_setting.dart';
import 'unit_test.dart';

void main() {
  group('MyWidget', () {
    List<FieldSettingModel> data = [];
    List<String?> dataWidgets = [];
    test('should load JSONS data from assets test field setting', () async {
      data = await loadJsonFieldSettingData();
      expect(data, isNotEmpty);
    });

    testWidgets('should display a string of text', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return typeWidget(data[index], ctx: context, listWidgets: dataWidgets);
              },
            ),
          ),
        ),
      );

      expect(find.byType(Text), findsNWidgets(data.length));

      expect(dataWidgets.length, data.length);
    });
  });
}

Future<List<FieldSettingModel>> loadJsonFieldSettingData() async {
  final String response = await rootBundle.loadString('assets/jsons/cm/field-setting.json');
  var data = fieldSettingModelFromJson(response);
  return data;
}

Widget typeWidget(FieldSettingModel value, {BuildContext? ctx, required List<String?> listWidgets}) {
  Widget result = const Text('default');
  listWidgets.add(null);
  switch (value.type) {
    case 0:
      if (ctx == null) {
        throw ArgumentError('ctx is null');
      } else {
        result = ElevatedButton(
          onPressed: () async {
            await showDatePicker(
              context: ctx,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );
          },
          child: Text(value.title ?? ''),
        );
      }
      break;
    case 1:
      result = DropdownButton<String?>(
        value: listWidgets.last,
        hint: Text(value.title ?? ''),
        items: ['One', 'Two', 'Free', 'Four'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {},
      );
      break;
    default:
      result = Text(value.title ?? '');
      break;
  }
  return result;
}
