import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// ignore: camel_case_types
class performanceWidget extends StatefulWidget {
  final Color containerColor;
  final Color titleColor;
  final Color subColor;
  final String percentText;
  final String title;
  final String subtitle;

  const performanceWidget(
      {Key? key,
      required this.containerColor,
      required this.percentText,
      required this.subColor,
      required this.subtitle,
      required this.title,
      required this.titleColor})
      : super(key: key);

  @override
  State<performanceWidget> createState() => _performanceWidgetState();
}

// ignore: camel_case_types
class _performanceWidgetState extends State<performanceWidget> {
  @override
  Widget build(BuildContext context) {
    return
        //First tile
        Padding(
      padding: const EdgeInsets.only(left: 15, right: 10),
      child: Container(
        height: 165.h,
        width: 110.w,
        decoration: BoxDecoration(
          color: widget.containerColor,
          borderRadius: BorderRadius.circular(5.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2.r,
              blurRadius: 8.r,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //progress indicator
              CircularPercentIndicator(
                radius: 28.0,
                animation: true,
                animationDuration: 1200,
                lineWidth: 4.0,
                percent: 0.5,
                center: Text(
                  widget.percentText,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0,
                      color: widget.titleColor),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: widget.containerColor,
                progressColor: widget.subColor,
              ),
              const SizedBox(height: 15),

              //title
              Text(
                widget.title,
                style: TextStyle(
                    color: widget.titleColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),

              //subtitle
              Text(
                widget.subtitle,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: widget.subColor,
                    fontSize: 10.5.sp,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
