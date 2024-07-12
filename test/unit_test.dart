// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'base_response.dart';
import 'master_document.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('JSONS Load Test', () {
    test('should load JSONS data from assets ${TypeJson.fm} : ${JsonFile.documents}', () async {
      final data = await _loadJsonData(product: TypeJson.cm, filename: JsonFile.rfi_detail);
      expect(data, isNotEmpty);
    });
  });
}

enum TypeJson { cm, fm }

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

Future<List<MasterDocument>> _loadJsonData({required TypeJson product, required JsonFile filename}) async {
  final String response = await rootBundle.loadString('assets/jsons/${product.name}/${filename.name}.json');
  List<MasterDocument> masterDocuments = [];
  var data = json.decode(response)['results'];
  if (data == null) {
    masterDocuments.add(masterDocumentFromJson(response));
  } else {
    for (var element in data) {
      masterDocuments.add(masterDocumentFromJson(element));
    }
  }

  BaseResponse<MasterDocument> baseResponse = BaseResponse<MasterDocument>(
    null,
    null,
    null,
    null,
    masterDocuments,
    null,
    null,
    null,
  );
  return baseResponse.results ?? [];
}
