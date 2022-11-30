import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:realtime_innovations_assignment/constants/enums.dart';
import 'package:realtime_innovations_assignment/constants/strings.dart';
import '../constants/colors.dart';
import '../controller/calendar_date_controller.dart';
import 'custom_text_button.dart';

class SixPresetGrid extends StatefulWidget {
  const SixPresetGrid({Key? key}) : super(key: key);

  @override
  State<SixPresetGrid> createState() => _SixPresetGridState();
}

class _SixPresetGridState extends State<SixPresetGrid> {
  SixPreset selectedPreset = SixPreset.today;
  final calendarController = Get.put(CalendarDateController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        top: 24.h,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedPreset = SixPreset.yest;
                    });
                    calendarController.yestDate();
                  },
                  child: CustomTextButton(
                    buttonTitle: preset6Txt1,
                    btnHeight: 35,
                    btnColor: selectedPreset == SixPreset.yest
                        ? bluePrimary
                        : blueSecondary,
                    txtColor: selectedPreset == SixPreset.yest
                        ? Colors.white
                        : bluePrimary,
                    txtSize: 14,
                    fontWeight: FontWeight.w400,
                    borderRadius: 4,
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedPreset = SixPreset.today;
                    });
                    calendarController.resetToggle();
                  },
                  child: CustomTextButton(
                    buttonTitle: preset6Txt2,
                    btnHeight: 35,
                    btnColor: selectedPreset == SixPreset.today
                        ? bluePrimary
                        : blueSecondary,
                    txtColor: selectedPreset == SixPreset.today
                        ? Colors.white
                        : bluePrimary,
                    txtSize: 14,
                    fontWeight: FontWeight.w400,
                    borderRadius: 4,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedPreset = SixPreset.tom;
                    });
                    calendarController.nextDay();
                  },
                  child: CustomTextButton(
                    buttonTitle: preset6Txt3,
                    btnHeight: 35,
                    btnColor: selectedPreset == SixPreset.tom
                        ? bluePrimary
                        : blueSecondary,
                    txtColor: selectedPreset == SixPreset.tom
                        ? Colors.white
                        : bluePrimary,
                    txtSize: 14,
                    fontWeight: FontWeight.w400,
                    borderRadius: 4,
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedPreset = SixPreset.sat;
                    });
                    calendarController.nextSat();
                  },
                  child: CustomTextButton(
                    buttonTitle: preset6Txt4,
                    btnHeight: 35,
                    btnColor: selectedPreset == SixPreset.sat
                        ? bluePrimary
                        : blueSecondary,
                    txtColor: selectedPreset == SixPreset.sat
                        ? Colors.white
                        : bluePrimary,
                    txtSize: 14,
                    fontWeight: FontWeight.w400,
                    borderRadius: 4,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.w),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedPreset = SixPreset.sun;
                    });
                    calendarController.nextSun();
                  },
                  child: CustomTextButton(
                    buttonTitle: preset6Txt5,
                    btnHeight: 35,
                    btnColor: selectedPreset == SixPreset.sun
                        ? bluePrimary
                        : blueSecondary,
                    txtColor: selectedPreset == SixPreset.sun
                        ? Colors.white
                        : bluePrimary,
                    txtSize: 14,
                    fontWeight: FontWeight.w400,
                    borderRadius: 4,
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedPreset = SixPreset.tue;
                    });
                    calendarController.nextTue();
                  },
                  child: CustomTextButton(
                    buttonTitle: preset6Txt6,
                    btnHeight: 35,
                    btnColor: selectedPreset == SixPreset.tue
                        ? bluePrimary
                        : blueSecondary,
                    txtColor: selectedPreset == SixPreset.tue
                        ? Colors.white
                        : bluePrimary,
                    txtSize: 14,
                    fontWeight: FontWeight.w400,
                    borderRadius: 4,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
