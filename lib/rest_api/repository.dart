import 'package:flutter_doan_duc_cuong/model/movie_item_response.dart';
import 'package:flutter_doan_duc_cuong/rest_api/api.dart';
import 'package:flutter_doan_duc_cuong/rest_api/rest_client.dart';

class AppRepository {
  final AppApi api;
  final AppRestClient appRestClient;

  AppRepository({
    required this.api,
    required this.appRestClient,
  });
  Future<MovieItemResponse?> getMovieData(int page) async {
    try {
      var data = await appRestClient.getMovieData(
        '26763d7bf2e94098192e629eb975dab0',
        page,
      );
      return data;
      // ignore: empty_catches
    } catch (e) {}
    return null;
  }
}
