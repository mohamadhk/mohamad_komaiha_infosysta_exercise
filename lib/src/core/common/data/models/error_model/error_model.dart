import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel extends Equatable {
 const ErrorModel({
    this.error,
   this.message,
   this.statusCode,
   this.code
  });

  final Error? error;
  final String? message;
  final int? statusCode;
 final  String? code;

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);

  @override
  List<Object?> get props => [
     message,
     code,
    statusCode
      ];
}


@JsonSerializable()
class Error extends Equatable {
  Error({
    this.code,
    this.title,
    this.message,
    this.path,
    this.originalError,
  });

  String? code;
  String? title;
  String? message;
  String? path;
  @JsonKey(name: 'original_error')
  String? originalError;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);

  @override
  List<Object?> get props => [
    code,
    title,
    message,
    path,
    originalError,
  ];
}

