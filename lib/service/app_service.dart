import 'package:dio/dio.dart';
import 'package:flutter_doan_duc_cuong/rest_api/rest_client.dart';

import '../model/movie_item_response.dart';

class AppService{
  Dio _dio = Dio();
  late AppRestClient restClient;
  Future<MovieItemResponse?> getData()async{
    try{
      restClient=AppRestClient(_dio);
      final a=restClient.getMovieData("26763d7bf2e94098192e629eb975dab0", 1);
      print(a);
      return restClient.getMovieData("26763d7bf2e94098192e629eb975dab0", 1);
    }catch(e){
      print(e);
      return null;
    }

  }
}