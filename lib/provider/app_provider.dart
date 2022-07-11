import 'package:flutter/material.dart';
import 'package:flutter_doan_duc_cuong/model/movie_content.dart';
import 'package:flutter_doan_duc_cuong/model/movie_item_response.dart';
import 'package:flutter_doan_duc_cuong/rest_api/repository.dart';
import 'package:flutter_doan_duc_cuong/util/loading_util.dart';
import 'dart:developer';

class AppProvider extends ChangeNotifier {
  MovieItemResponse? movieItemResponse;
  List<MovieContent?> movieList = <MovieContent>[];
  // ignore: prefer_typing_uninitialized_variables
  var response;
  bool isFull = false;
  var data;
  final AppRepository appRepository;
  int page = 1;
  AppProvider({required this.appRepository}) {
    initData();
  }
  Future<void> initData() async {
    log(movieItemResponse.toString());
    LoadingUtil.showLoading();
    try {
      movieItemResponse = await appRepository.getMovieData(2);
      log(movieItemResponse.toString());
    } catch (e) {
      LoadingUtil.hideLoading();
      print(e);
    }
    LoadingUtil.hideLoading();

    // try {
    //   final response = await Dio()
    //       .get("https://api.themoviedb.org/3/discover/movie", queryParameters: {
    //     'api_key': "26763d7bf2e94098192e629eb975dab0",
    //     'page': 2
    //   });
    //   if (response.statusCode == 200) {
    //     print(response);
    //   } else {
    //   }
    //
    //   print(response);
    //   notifyListeners();
    // } catch (e) {
    //   print(e);
    //   LoadingUtil.hideLoading();
    // } finally {
    //   LoadingUtil.hideLoading();
    // }
  }

  Future<void> getMovieLoadMore(int page) async {
    try {
      LoadingUtil.showLoading();
      if (!isFull) {
        movieItemResponse = await appRepository.getMovieData(page);
        movieList = List.from(movieList)
          ..addAll(movieItemResponse?.results ?? []);
      } else {
        if (movieItemResponse?.results != null) {
          isFull = true;
        }
      }
    } finally {
      LoadingUtil.hideLoading();
    }

    notifyListeners();
  }
}