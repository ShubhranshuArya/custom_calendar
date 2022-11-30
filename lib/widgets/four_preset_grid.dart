import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:realtime_innovations_assignment/constants/colors.dart';
import 'package:realtime_innovations_assignment/constants/enums.dart';
import 'package:realtime_innovations_assignment/constants/strings.dart';
import 'package:realtime_innovations_assignment/widgets/custom_text_button.dart';

import '../controller/calendar_date_controller.dart';

class FourPresetGrid extends StatefulWidget {
  const FourPresetGrid({Key? key}) : super(key: key);

  @override
  State<FourPresetGrid> createState() => _FourPresetGridState();
}

class _FourPresetGridState extends State<FourPresetGrid> {
  FourPreset selectedPreset = FourPreset.never;
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
                      selectedPreset = FourPreset.never;
                    });
                  },
                  child: CustomTextButton(
                    buttonTitle: preset4Txt1,
                    btnHeight: 35,
                    btnColor: selectedPreset == FourPreset.never
                        ? bluePrimary
                        : blueSecondary,
                    txtColor: selectedPreset == FourPreset.never
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
                      selectedPreset = FourPreset.fifteen;
                    });
                    calendarController.fifteenDaysLater();
                  },
                  child: CustomTextButton(
                    buttonTitle: preset4Txt2,
                    btnHeight: 35,
                    btnColor: selectedPreset == FourPreset.fifteen
                        ? bluePrimary
                        : blueSecondary,
                    txtColor: selectedPreset == FourPreset.fifteen
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
                      selectedPreset = FourPreset.thrity;
                    });
                    calendarController.oneMonthLater();
                  },
                  child: CustomTextButton(
                    buttonTitle: preset4Txt3,
                    btnHeight: 35,
                    btnColor: selectedPreset == FourPreset.thrity
                        ? bluePrimary
                        : blueSecondary,
                    txtColor: selectedPreset == FourPreset.thrity
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
                      selectedPreset = FourPreset.sixty;
                    });
                    calendarController.twoMonthLater();
                  },
                  child: CustomTextButton(
                    buttonTitle: preset4Txt4,
                    btnHeight: 35,
                    btnColor: selectedPreset == FourPreset.sixty
                        ? bluePrimary
                        : blueSecondary,
                    txtColor: selectedPreset == FourPreset.sixty
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
