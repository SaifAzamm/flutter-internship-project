// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class schedule extends StatefulWidget {
  final String time;
  final String title;
  final String subtitle;
  final Color backColor;
  final Color titleColor;
  final Color subColor;
  const schedule(
      {Key? key,
      required this.titleColor,
      required this.subColor,
      required this.backColor,
      required this.subtitle,
      required this.time,
      required this.title})
      : super(key: key);

  @override
  State<schedule> createState() => _scheduleState();
}

class _scheduleState extends State<schedule> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.time,
                style: const TextStyle(
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
                color: widget.backColor),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: widget.titleColor),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: widget.subColor,
                        size: 15,
                      ),
                      Text(
                        widget.subtitle,
                        style: TextStyle(color: widget.subColor),
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
                                  fontSize: 10.sp, fontWeight: FontWeight.bold),
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
    );
  }
}
