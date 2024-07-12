// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldSettingModel _$FieldSettingModelFromJson(Map<String, dynamic> json) => FieldSettingModel(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      key: json['key'] as String?,
      type: (json['type'] as num?)?.toInt(),
      isRequired: json['is_required'] as bool?,
      isEditable: json['is_editable'] as bool?,
      tool: (json['tool'] as num?)?.toInt(),
      company: (json['company'] as num?)?.toInt(),
      project: (json['project'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FieldSettingModelToJson(FieldSettingModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'key': instance.key,
      'type': instance.type,
      'is_required': instance.isRequired,
      'is_editable': instance.isEditable,
      'tool': instance.tool,
      'company': instance.company,
      'project': instance.project,
    };
