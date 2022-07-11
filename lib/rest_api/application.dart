import 'package:flutter_doan_duc_cuong/rest_api/api.dart';
import 'package:flutter_doan_duc_cuong/rest_api/repository.dart';

class Application {
  late AppRepository appRepository;
  late AppApi _api;

  setup() async {
    _api = AppApi();
    await setupRepositories();
  }

  setupRepositories() async {
    final movieRestClient = _api.getMovieRestClient();
    appRepository = AppRepository(api: _api, appRestClient: movieRestClient);
  }
}
