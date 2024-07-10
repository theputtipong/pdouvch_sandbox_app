// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('JSONS Load Test', () {
    test('should load JSONS data from assets ${TypeJson.cm} : ${JsonFile.choices}', () async {
      final data = await _loadJsonData(product: TypeJson.cm, filename: JsonFile.choices);
      expect(data, isNotEmpty);
    });
  });
}

enum TypeJson { cm, pm }

enum JsonFile {
  choices,
  inspection_detail,
  list_inspection,
  list_rfi,
  list_submittal,
  list_wo,
  rfi_detail,
  submittal_detail,
  wo_detail,
  document_detail,
  documents
}

Future<List<dynamic>> _loadJsonData({required TypeJson product, required JsonFile filename}) async {
  final String response = await rootBundle.loadString('assets/jsons/${product.name}/${filename.name}.json');
  final data = await json.decode(response);
  return data;
}
