import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:realtime_innovations_assignment/constants/colors.dart';
import 'package:realtime_innovations_assignment/constants/enums.dart';
import 'package:realtime_innovations_assignment/constants/strings.dart';
import 'package:realtime_innovations_assignment/constants/text_style.dart';

import '../controller/calendar_date_controller.dart';

class SelectedDateContainer extends StatelessWidget {
  final String selectedDate;
  final Preset preset;
  const SelectedDateContainer({
    Key? key,
    required this.selectedDate,
    required this.preset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calendarController = Get.put(CalendarDateController());
    return Positioned(
      bottom: -48.h,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        height: 32.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: blueSecondary,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              selectedCalIcon,
              color: bluePrimary,
              height: 14.h,
            ),
            SizedBox(width: 8.w),
            Text(
              selectedDate,
              style: robotobluePri14w4,
            ),
            SizedBox(width: 8.w),
            GestureDetector(
              onTap: () {
                calendarController.removeSelectedDate(preset);
              },
              child: SvgPicture.asset(
                removeIcon,
                color: bluePrimary,
                height: 10.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
