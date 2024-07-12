import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'count')
  final int? count;

  @JsonKey(name: 'page')
  final int? page;

  @JsonKey(name: 'next')
  final int? next;

  @JsonKey(name: 'results')
  final List<T>? results;

  @JsonKey(name: 'label')
  final String? label;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'detail')
  final String? detail;

  BaseResponse(
    this.id,
    this.count,
    this.page,
    this.next,
    this.results,
    this.label,
    this.title,
    this.detail,
  );

  factory BaseResponse.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);

  factory BaseResponse.init({
    int? id,
    int? count,
    int? page,
    int? next,
    List<T>? results,
    String? label,
    String? title,
    String? detail,
  }) {
    return BaseResponse(
      id,
      count,
      page,
      next,
      results,
      label,
      title,
      detail,
    );
  }

  Map<String, dynamic> toBaseJson(Object Function(T value) toJsonT) => _$BaseResponseToJson(this, toJsonT);
}
