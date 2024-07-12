// ignore_for_file: constant_identifier_names

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'base_response.dart';
import 'master_document.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('JSONS Load Test', () {
    test('should load JSONS data from assets ${TypeJson.fm} : ${JsonFile.documents}', () async {
      final data = await _loadJsonData(product: TypeJson.fm, filename: JsonFile.documents);
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

Future<MasterDocument> _loadJsonData({required TypeJson product, required JsonFile filename}) async {
  final String response = await rootBundle.loadString('assets/jsons/${product.name}/${filename.name}.json');
  MasterDocument data = masterDocumentFromJson(response);
  BaseResponse<MasterDocument> baseResponse = BaseResponse<MasterDocument>();
  return data;
}
