import 'package:dzentra/widgets/circleIcon.dart';
import 'package:dzentra/widgets/performanceCard.dart';
import 'package:dzentra/widgets/schedule.dart';
import 'package:dzentra/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            //Status bar
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
                                      TextWidget(
                                          text: 'Hey, ',
                                          textColor: Color(0xffFAFAFA)),
                                      TextWidget(
                                        text: 'Afrin',
                                        textColor: const Color(0xffFAFAFA),
                                        size: 20.sp,
                                      ),
                                    ],
                                  ),
                                  TextWidget(
                                      text: '18445',
                                      textColor: const Color(0xffFAFAFA)),
                                  TextWidget(
                                      text: 'Instructor',
                                      textColor: const Color(0xffFAFAFA)),
                                  TextWidget(
                                      text: 'Physics',
                                      textColor: const Color(0xffFAFAFA)),
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
                                  TextWidget(
                                    text: 'Instructor ID:18445',
                                    textColor: const Color(0xffFAFAFA),
                                    size: 12.sp,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  //Status bar row
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
            //title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    TextWidget(
                      text: "Hello, Afrin!",
                      textColor: Colors.black,
                      size: 30.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(height: 10),
                    TextWidget(
                      text: "Your Activity",
                      textColor: Colors.black,
                      size: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),

            //Horizontal list
            Container(
              height: 172.h,
              color: Colors.transparent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  performanceWidget(
                      containerColor: Color.fromARGB(255, 255, 121, 121),
                      percentText: '12/40',
                      subColor: Color.fromARGB(255, 242, 225, 225),
                      subtitle: 'Working hours\nexceeded by 3 hours',
                      title: 'Attendance',
                      titleColor: Colors.white),
                  performanceWidget(
                      containerColor: Color.fromARGB(255, 250, 255, 101),
                      percentText: "30%",
                      subColor: Color.fromARGB(255, 133, 89, 83),
                      subtitle: 'Excellent result',
                      title: 'Assignments',
                      titleColor: Color.fromARGB(255, 69, 46, 43)),
                  performanceWidget(
                      containerColor: Color.fromARGB(255, 38, 50, 215),
                      percentText: "30%",
                      subColor: Color.fromARGB(255, 210, 208, 208),
                      subtitle: 'Excellent performance',
                      title: 'Attendance',
                      titleColor: Colors.white),
                  performanceWidget(
                      containerColor: Color.fromARGB(255, 45, 234, 101),
                      percentText: "30%",
                      subColor: Color.fromARGB(255, 46, 43, 43),
                      subtitle: 'Excellent performance',
                      title: 'Attendance',
                      titleColor: Color.fromARGB(255, 48, 46, 46)),
                ],
              ),
            ),

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

            //vertical list
            const schedule(
                titleColor: Color.fromARGB(255, 221, 71, 71),
                subColor: Color.fromARGB(255, 235, 139, 139),
                backColor: Color.fromARGB(255, 250, 209, 223),
                subtitle: '  Physics Building Floor 2. 1A',
                time: '10:00 AM',
                title: 'Basic Physics'),
            const SizedBox(
              height: 10,
            ),
            const schedule(
                titleColor: Color.fromARGB(255, 8, 60, 75),
                subColor: Color.fromARGB(255, 25, 116, 141),
                backColor: Color.fromARGB(255, 217, 244, 252),
                subtitle: '  Physics Building Floor 2. 1A',
                time: '11:00 AM',
                title: 'Basic Physics'),
            const SizedBox(
              height: 10,
            ),
            const schedule(
                titleColor: Color.fromARGB(255, 221, 71, 71),
                subColor: Color.fromARGB(255, 235, 139, 139),
                backColor: Color.fromARGB(255, 250, 209, 223),
                subtitle: '  Physics Building Floor 2. 1A',
                time: '12:00 AM',
                title: 'Basic Physics'),
            const SizedBox(
              height: 10,
            ),
            const schedule(
                titleColor: Color.fromARGB(255, 8, 60, 75),
                subColor: Color.fromARGB(255, 25, 116, 141),
                backColor: Color.fromARGB(255, 217, 244, 252),
                subtitle: '  Physics Building Floor 2. 1A',
                time: '01:00 PM',
                title: 'Basic Physics'),
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
