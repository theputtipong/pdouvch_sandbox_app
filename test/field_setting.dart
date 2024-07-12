import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'field_setting_model.g.dart';

List<FieldSettingModel> fieldSettingModelFromJson(String str) =>
    List<FieldSettingModel>.from(json.decode(str).map((x) => FieldSettingModel.fromJson(x)));

String fieldSettingModelToJson(List<FieldSettingModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class FieldSettingModel {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "key")
  String? key;
  @JsonKey(name: "type")
  int? type;
  @JsonKey(name: "is_required")
  bool? isRequired;
  @JsonKey(name: "is_editable")
  bool? isEditable;
  @JsonKey(name: "tool")
  int? tool;
  @JsonKey(name: "company")
  int? company;
  @JsonKey(name: "project")
  int? project;

  FieldSettingModel({
    this.id,
    this.title,
    this.key,
    this.type,
    this.isRequired,
    this.isEditable,
    this.tool,
    this.company,
    this.project,
  });

  FieldSettingModel copyWith({
    int? id,
    String? title,
    String? key,
    int? type,
    bool? isRequired,
    bool? isEditable,
    int? tool,
    int? company,
    int? project,
  }) =>
      FieldSettingModel(
        id: id ?? this.id,
        title: title ?? this.title,
        key: key ?? this.key,
        type: type ?? this.type,
        isRequired: isRequired ?? this.isRequired,
        isEditable: isEditable ?? this.isEditable,
        tool: tool ?? this.tool,
        company: company ?? this.company,
        project: project ?? this.project,
      );

  factory FieldSettingModel.fromJson(Map<String, dynamic> json) => _$FieldSettingModelFromJson(json);

  Map<String, dynamic> toJson() => _$FieldSettingModelToJson(this);
}
