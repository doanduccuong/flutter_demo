import 'package:flutter/material.dart';
import 'package:flutter_doan_duc_cuong/common/color.dart';
import 'package:flutter_doan_duc_cuong/common/constant.dart';
import 'package:flutter_doan_duc_cuong/common/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListItem extends StatelessWidget {
  final String image;
  final double? score;

  const ListItem({Key? key, required this.image, this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166.w,
      height: 252.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(Constants.baseImageUrl + image),
        ),
        color: AppColors.black,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20.r,
              child: Text(
                (score ?? "").toString(),
                style: AppTextStyle.commonTextStyle.copyWith(fontSize: 18.sp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
