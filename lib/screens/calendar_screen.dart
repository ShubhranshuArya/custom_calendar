import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:realtime_innovations_assignment/constants/enums.dart';
import 'package:realtime_innovations_assignment/constants/strings.dart';
import 'package:realtime_innovations_assignment/constants/text_style.dart';
import 'package:realtime_innovations_assignment/widgets/custom_text_button.dart';
import 'package:realtime_innovations_assignment/widgets/widgets.dart';

import '../controller/calendar_date_controller.dart';
import '../widgets/selected_date_container.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calendarController = Get.put(CalendarDateController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                screenText,
                style: robotoBlack18w5,
              ),
              SizedBox(height: 40.h),
              GestureDetector(
                onTap: () => showCalendarDialog(context: context),
                child: const CustomTextButton(
                  buttonTitle: btnTxt1,
                ),
              ),
              Obx(
                () {
                  if (calendarController.savedDate1.value !=
                      DateTime.utc(2001, 05, 31)) {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: 16.h,
                        bottom: 32.h,
                      ),
                      child: SelectedDateContainer(
                        selectedDate:
                            formatDate(calendarController.savedDate1.value),
                        preset: Preset.none,
                      ),
                    );
                  }
                  return SizedBox(height: 80.h);
                },
              ),
              GestureDetector(
                onTap: () => showCalendarDialog(
                  context: context,
                  is4Preset: true,
                ),
                child: const CustomTextButton(
                  buttonTitle: btnTxt2,
                ),
              ),
              Obx(
                () {
                  if (calendarController.savedDate2.value !=
                      DateTime.utc(2001, 05, 31)) {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: 16.h,
                        bottom: 32.h,
                      ),
                      child: SelectedDateContainer(
                        selectedDate:
                            formatDate(calendarController.savedDate2.value),
                        preset: Preset.four,
                      ),
                    );
                  }
                  return SizedBox(height: 80.h);
                },
              ),
              GestureDetector(
                onTap: () => showCalendarDialog(
                  context: context,
                  is6Preset: true,
                ),
                child: const CustomTextButton(
                  buttonTitle: btnTxt3,
                ),
              ),
              Obx(
                () {
                  if (calendarController.savedDate3.value !=
                      DateTime.utc(2001, 05, 31)) {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: 16.h,
                        bottom: 32.h,
                      ),
                      child: SelectedDateContainer(
                        selectedDate:
                            formatDate(calendarController.savedDate3.value),
                        preset: Preset.six,
                      ),
                    );
                  }
                  return SizedBox(height: 80.h);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
