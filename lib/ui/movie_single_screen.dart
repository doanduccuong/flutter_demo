import 'package:flutter/material.dart';
import 'package:flutter_doan_duc_cuong/common/color.dart';
import 'package:flutter_doan_duc_cuong/common/constant.dart';
import 'package:flutter_doan_duc_cuong/common/text_styles.dart';
import 'package:flutter_doan_duc_cuong/provider/app_provider.dart';
import 'package:flutter_doan_duc_cuong/rest_api/repository.dart';
import 'package:flutter_doan_duc_cuong/ui/widget/movie_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MovieSingleScreen extends StatefulWidget {
  const MovieSingleScreen({Key? key}) : super(key: key);

  @override
  State<MovieSingleScreen> createState() => _MovieSingleScreenState();
}

class _MovieSingleScreenState extends State<MovieSingleScreen> {
  int page = 1;
  final _refreshController = RefreshController();
  Future<void> _onRefresh(BuildContext context) async {
    context.read<AppProvider>().initData();
    _refreshController.refreshCompleted();
  }

  Future<void> _onLoading(BuildContext context) async {
    page++;
    context.read<AppProvider>().getMovieLoadMore(page);
    _refreshController.loadComplete();
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppProvider(appRepository: context.read<AppRepository>()),
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.arrow_back_ios),
                      Text(
                        "Back",
                        style:
                            AppTextStyle.commonTextStyle.copyWith(fontSize: 32),
                      )
                    ],
                  ),
                  SIZED_BOX_H14,
                  Text(
                    "Popular list",
                    style: AppTextStyle.commonTextStyle.copyWith(
                      color: AppColors.aPrimaryColor,
                      fontSize: 27,
                    ),
                  ),
                  Consumer<AppProvider>(
                    builder: (BuildContext context, provider, Widget? child) {
                      final data = provider.movieItemResponse;
                      final length = provider.movieList.length;
                      return data == null
                          ? const SizedBox()
                          : Flexible(
                              child: SmartRefresher(
                              footer: const ClassicFooter(
                                loadStyle: LoadStyle.ShowWhenLoading,
                              ),
                              enablePullDown: true,
                              enablePullUp: true,
                              onLoading: () => _onLoading(context),
                              onRefresh: () => _onRefresh(context),
                              controller: _refreshController,
                              child: GridView.count(
                                shrinkWrap: true,
                                mainAxisSpacing: 20.h,
                                crossAxisSpacing: 20.h,
                                crossAxisCount: 2,
                                children: List.generate(
                                  length,
                                  (index) {
                                    final image = provider
                                            .movieList[index]?.backDropPath ??
                                        "";
                                    final score =
                                        provider.movieList[index]?.voteAverage;
                                    return ListItem(
                                      image: image,
                                      score: score,
                                    );
                                  },
                                ),
                              ),
                            ));
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
