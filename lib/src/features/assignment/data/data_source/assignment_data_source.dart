 import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/utils/managers/http/http_manager.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/utils/managers/http/http_methods.dart';


abstract class AssignmentDataSource{

  Future<List<dynamic>> getPosts(Map<String,dynamic> params);
}

 class AssignmentRemoteDataSource extends AssignmentDataSource {

  HttpManager httpManager;


  AssignmentRemoteDataSource({
    required this.httpManager
  });
  @override
  Future<List<dynamic>> getPosts(Map<String, dynamic> params) async{
    Response response = await httpManager.request(
      path: 'https://jsonplaceholder.typicode.com/posts',
      method: HttpMethods.Get,
      params: params,
    );
    return json.decode(response.data);
  }





 }