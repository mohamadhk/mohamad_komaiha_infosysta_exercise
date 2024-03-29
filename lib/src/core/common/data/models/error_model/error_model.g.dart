// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(
      error: json['error'] == null
          ? null
          : Error.fromJson(json['error'] as Map<String, dynamic>),
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'statusCode': instance.statusCode,
      'code': instance.code,
    };

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      code: json['code'] as String?,
      title: json['title'] as String?,
      message: json['message'] as String?,
      path: json['path'] as String?,
      originalError: json['original_error'] as String?,
    );

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
      'code': instance.code,
      'title': instance.title,
      'message': instance.message,
      'path': instance.path,
      'original_error': instance.originalError,
    };
