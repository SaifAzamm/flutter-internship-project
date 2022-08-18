import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PerformanceList extends StatefulWidget {
  const PerformanceList({
    Key? key,
  }) : super(key: key);

  @override
  State<PerformanceList> createState() => _PerformanceListState();
}

class _PerformanceListState extends State<PerformanceList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172.h,
      color: Colors.transparent,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          //First tile
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: Container(
              height: 165.h,
              width: 110.w,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 121, 121),
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
                      center: const Text(
                        "12/40",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0,
                            color: Colors.white),
                      ),
                      circularStrokeCap: CircularStrokeCap.butt,
                      backgroundColor: const Color.fromARGB(255, 255, 121, 121),
                      progressColor: const Color.fromARGB(255, 242, 225, 225),
                    ),
                    const SizedBox(height: 15),

                    //title
                    const Text(
                      'Attendance',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),

                    //subtitle
                    Text(
                      'Working hours\nexceeded by 3 hours',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 242, 225, 225),
                          fontSize: 10.5.sp,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),

          //Second tile
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 165.h,
              width: 110.w,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2.r,
                      blurRadius: 8.r,
                    ),
                  ],
                  color: const Color.fromARGB(255, 255, 210, 105),
                  borderRadius: BorderRadius.circular(5.r)),
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
                      center: const Text(
                        "30%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 69, 46, 43)),
                      ),
                      circularStrokeCap: CircularStrokeCap.butt,
                      backgroundColor: const Color.fromARGB(255, 255, 210, 105),
                      progressColor: const Color.fromARGB(255, 133, 89, 83),
                    ),
                    const SizedBox(height: 15),

                    //title
                    const Text(
                      'Assignments',
                      style: TextStyle(
                          color: Color.fromARGB(255, 69, 46, 43),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),

                    //subtitle
                    Text(
                      'Excellent result',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 133, 89, 83),
                          fontSize: 10.5.sp,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),

          //third tile
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 165.h,
              width: 110.w,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2.r,
                      blurRadius: 8.r,
                    ),
                  ],
                  color: const Color.fromARGB(255, 38, 50, 215),
                  borderRadius: BorderRadius.circular(5.r)),
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
                      center: const Text(
                        "30%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0,
                            color: Colors.white),
                      ),
                      circularStrokeCap: CircularStrokeCap.butt,
                      backgroundColor: const Color.fromARGB(255, 38, 50, 215),
                      progressColor: const Color.fromARGB(255, 210, 208, 208),
                    ),
                    const SizedBox(height: 15),

                    //title
                    const Text(
                      'Attendance',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),

                    //subtitle
                    Text(
                      'Excellent performance',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 210, 208, 208),
                          fontSize: 10.5.sp,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),

          //fourth tile
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 15),
            child: Container(
              height: 165.h,
              width: 110.w,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2.r,
                      blurRadius: 8.r,
                    ),
                  ],
                  color: const Color.fromARGB(255, 45, 234, 101),
                  borderRadius: BorderRadius.circular(5.r)),
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
                      center: const Text(
                        "30%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 28, 26, 26)),
                      ),
                      circularStrokeCap: CircularStrokeCap.butt,
                      backgroundColor: const Color.fromARGB(255, 45, 234, 101),
                      progressColor: const Color.fromARGB(255, 65, 61, 61),
                    ),
                    const SizedBox(height: 15),

                    //title
                    const Text(
                      'Attendance',
                      style: TextStyle(
                          color: Color.fromARGB(255, 48, 46, 46),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),

                    //subtitle
                    Text(
                      'Excellent performance',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 46, 43, 43),
                          fontSize: 10.5.sp,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
