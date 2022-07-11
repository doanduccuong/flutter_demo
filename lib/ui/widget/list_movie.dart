import 'package:flutter/material.dart';
import 'package:flutter_doan_duc_cuong/common/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListMovie extends StatelessWidget {
  const ListMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        mainAxisSpacing: 20.h,
        crossAxisSpacing: 20.h,
        crossAxisCount: 2,
        children: List.generate(
          100,
          (index) => Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 20,
                )
              ],
            ),
            width: 166.w,
            height: 252.h,
            decoration: BoxDecoration(

                color: AppColors.black,
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}
