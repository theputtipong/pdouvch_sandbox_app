// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseResponse<T>(
      (json['id'] as num?)?.toInt(),
      (json['count'] as num?)?.toInt(),
      (json['page'] as num?)?.toInt(),
      (json['next'] as num?)?.toInt(),
      (json['results'] as List<dynamic>?)?.map(fromJsonT).toList(),
      json['label'] as String?,
      json['title'] as String?,
      json['detail'] as String?,
    );

Map<String, dynamic> _$BaseResponseToJson<T>(
  BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'page': instance.page,
      'next': instance.next,
      'results': instance.results?.map(toJsonT).toList(),
      'label': instance.label,
      'title': instance.title,
      'detail': instance.detail,
    };
