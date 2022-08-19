import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget circleIcon(dynamic iconName, iconTitle) {
  return Column(
    children: [
      Container(
        height: 63.h,
        width: 63.w,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2.r,
              blurRadius: 8.r,
              offset: const Offset(0, 7))
        ], shape: BoxShape.circle, color: Colors.white),
        child: Icon(
          iconName,
          size: 30,
          color: Colors.blue,
        ),
      ),
      const SizedBox(height: 10),
      Text(
        iconTitle,
        style: TextStyle(color: Colors.black, fontSize: 13.sp),
      )
    ],
  );
}
