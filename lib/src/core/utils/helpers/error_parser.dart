import 'dart:convert';
import 'package:dio/dio.dart';
import '../../common/data/models/error_model/error_model.dart';



ErrorModel errorParse(DioError? error, StackTrace stackTrace) {
  print('#error parse errorParse');


  final int? statusCode = error?.response?.statusCode;

  final Map<String, dynamic> errorResponse =
  json.decode(error?.response?.data?? '{}') as Map<String, dynamic>;

  errorResponse['statusCode']=statusCode;
  if(errorResponse['message'] == null){
    final Error localError = Error();
    final ErrorModel localErrorData = ErrorModel(error: localError,message: "You are not connected to the network. Please check if your Wi-Fi is enabled and try again");
    return localErrorData;
  }else{
    final ErrorModel errorModel = ErrorModel.fromJson(errorResponse);
    return errorModel;
  }
}
