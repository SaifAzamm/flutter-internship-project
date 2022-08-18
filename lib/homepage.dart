import 'package:dzentra/performanceList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

// List performanceListView = [
//   {
//     "progressText": '12/40',
//     "title": 'Attendance',
//     "subTitle": 'Working Hours\nexceeded by 3 hours',
//     "containerColor": Colors.blue,
//     "progrssTextColor": Colors.white,
//     "progressColor": Colors.yellow
//   },
//   {
//     "progressText": '12/40',
//     "title": 'Attendance',
//     "subTitle": 'Working Hours\nexceeded by 3 hours',
//     "containerColor": Colors.blue,
//     "progrssTextColor": Colors.white,
//     "progressColor": Colors.yellow
//   },
//   {
//     "progressText": '12/40',
//     "title": 'Attendance',
//     "subTitle": 'Working Hours\nexceeded by 3 hours',
//     "containerColor": Colors.blue,
//     "progrssTextColor": Colors.white,
//     "progressColor": Colors.yellow
//   }
// ];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 280.h,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xffFAFAFA),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 230.h,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.r),
                          bottomRight: Radius.circular(8.r)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 57,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20, left: 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(Icons.tune_rounded,
                                    size: 35, color: Color(0xffFAFAFA)),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.qr_code_scanner_outlined,
                                      size: 25,
                                      color: Color(0xffFAFAFA),
                                    ),
                                    SizedBox(width: 15),
                                    Icon(
                                      Icons.lightbulb,
                                      size: 25,
                                      color: Color(0xffFAFAFA),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 17),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'Hey, ',
                                        style:
                                            TextStyle(color: Color(0xffFAFAFA)),
                                      ),
                                      Text('Afrin',
                                          style: TextStyle(
                                              color: const Color(0xffFAFAFA),
                                              fontSize: 20.sp))
                                    ],
                                  ),
                                  const Text(
                                    '18445',
                                    style: TextStyle(color: Color(0xffFAFAFA)),
                                  ),
                                  const Text(
                                    'Instructor',
                                    style: TextStyle(color: Color(0xffFAFAFA)),
                                  ),
                                  const Text(
                                    'Physics',
                                    style: TextStyle(color: Color(0xffFAFAFA)),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 65.h,
                                    width: 65.w,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffFAFAFA),
                                      borderRadius: BorderRadius.circular(2.r),
                                    ),
                                    child: const Icon(
                                      Icons.person,
                                      color: Color.fromARGB(255, 206, 200, 200),
                                      size: 50,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Instructor ID:18445',
                                    style: TextStyle(
                                        color: const Color(0xffFAFAFA),
                                        fontSize: 12.sp),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          circleIcon(Icons.schedule_outlined, 'Schedule'),
                          circleIcon(
                              Icons.calendar_month_outlined, 'Attendance'),
                          circleIcon(Icons.layers_sharp, 'Assignments'),
                          circleIcon(Icons.receipt_long_rounded, 'Results'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      "Hello, Afrin!",
                      style: TextStyle(
                          fontSize: 30.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Your Activity",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            const PerformanceList(),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wednesday, Jun 23",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 25.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.r),
                        color: const Color.fromARGB(255, 230, 224, 224)),
                    child: const Icon(
                      Icons.calendar_today_rounded,
                      size: 20,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '10:00 AM',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        'assets/qrcode.png',
                        fit: BoxFit.contain,
                        height: 70.h,
                        width: 70.w,
                      )
                    ],
                  ),
                  Container(
                    height: 90.h,
                    width: 255.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: const Color.fromARGB(255, 250, 209, 223)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Basic Physics',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 221, 71, 71)),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_pin,
                                color: Color.fromARGB(255, 235, 139, 139),
                                size: 15,
                              ),
                              Text(
                                '  Physics Building Floor 2. 1A',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 235, 139, 139)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 15,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.r),
                                    color: Colors.grey,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+24',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '11:00 AM',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        'assets/qrcode.png',
                        fit: BoxFit.contain,
                        height: 70.h,
                        width: 70.w,
                      )
                    ],
                  ),
                  Container(
                    height: 90.h,
                    width: 255.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: const Color.fromARGB(255, 217, 244, 252)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Basic Physics',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 8, 60, 75)),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_pin,
                                color: Color.fromARGB(255, 25, 116, 141),
                                size: 15,
                              ),
                              Text(
                                '  Physics Building Floor 2. 1A',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 25, 116, 141)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 15,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.r),
                                    color: Colors.grey,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+24',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '12:00 AM',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        'assets/qrcode.png',
                        fit: BoxFit.contain,
                        height: 70.h,
                        width: 70.w,
                      )
                    ],
                  ),
                  Container(
                    height: 90.h,
                    width: 255.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: const Color.fromARGB(255, 250, 209, 223)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Basic Physics',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 221, 71, 71)),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_pin,
                                color: Color.fromARGB(255, 235, 139, 139),
                                size: 15,
                              ),
                              Text(
                                '  Physics Building Floor 2. 1A',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 235, 139, 139)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 15,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.r),
                                    color: Colors.grey,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+24',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '01:00 PM',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        'assets/qrcode.png',
                        fit: BoxFit.contain,
                        height: 70.h,
                        width: 70.w,
                      )
                    ],
                  ),
                  Container(
                    height: 90.h,
                    width: 255.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: const Color.fromARGB(255, 217, 244, 252)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Basic Physics',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 8, 60, 75)),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_pin,
                                color: Color.fromARGB(255, 25, 116, 141),
                                size: 15,
                              ),
                              Text(
                                '  Physics Building Floor 2. 1A',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 25, 116, 141)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 15,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.r),
                                    color: Colors.grey,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+24',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
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
