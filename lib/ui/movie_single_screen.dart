import 'package:flutter/material.dart';
import 'package:flutter_doan_duc_cuong/common/color.dart';
import 'package:flutter_doan_duc_cuong/common/constant.dart';
import 'package:flutter_doan_duc_cuong/common/text_styles.dart';
import 'package:flutter_doan_duc_cuong/provider/app_provider.dart';
import 'package:flutter_doan_duc_cuong/rest_api/repository.dart';
import 'package:flutter_doan_duc_cuong/ui/widget/list_movie.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MovieSingleScreen extends StatefulWidget {
  const MovieSingleScreen({Key? key}) : super(key: key);

  @override
  State<MovieSingleScreen> createState() => _MovieSingleScreenState();
}

class _MovieSingleScreenState extends State<MovieSingleScreen> {
  final _refreshController = RefreshController();
  Future<void> _onRefresh(BuildContext context) async {
    Future.delayed(Duration(seconds: 2));
    _refreshController.refreshCompleted();
  }

  Future<void> _onLoading(BuildContext context) async {
    Future.delayed(Duration(seconds: 2));
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
        final a = context.watch<AppProvider>().response;
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
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
                  const ListMovie()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}