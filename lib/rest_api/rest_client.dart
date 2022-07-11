import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../model/movie_item_response.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class AppRestClient {
  factory AppRestClient(Dio dio, {String baseUrl}) = _AppRestClient;
  @GET("movie")
  Future<MovieItemResponse?> getMovieData(
    @Query("api_key") String apiKey,
    @Query("page") int page,
  );
}
