import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../model/movie_item_response.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://api.themoviedb.org/3/discover/")
abstract class AppRestClient {
  factory AppRestClient(Dio dio) = _AppRestClient;
  @GET("movie")
  Future<MovieItemResponse?> getMovieData(
    @Query("api_key") String apiKey,
    @Query("page") int page,
  );
}
