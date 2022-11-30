import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:realtime_innovations_assignment/constants/enums.dart';
import 'package:realtime_innovations_assignment/constants/strings.dart';
import 'package:realtime_innovations_assignment/controller/calendar_date_controller.dart';
import 'package:realtime_innovations_assignment/widgets/widgets.dart';
import '../constants/colors.dart';
import 'custom_text_button.dart';

class SaveDateRow extends StatefulWidget {
  final Preset preset;
  const SaveDateRow({
    Key? key,
    required this.preset,
  }) : super(key: key);

  @override
  State<SaveDateRow> createState() => _SaveDateRowState();
}

class _SaveDateRowState extends State<SaveDateRow> {
  final calendarController = Get.put(CalendarDateController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
        bottom: 24,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            calendarIcon,
            color: bluePrimary,
            height: 23.h,
          ),
          SizedBox(width: 10.w),
          Obx(() {
            String date = formatDate(calendarController.toggleDate.value);
            return Text(date);
          }),
          const Spacer(),
          SizedBox(
            width: 72.w,
            child: GestureDetector(
              onTap: () {
                calendarController.resetToggle();
                Navigator.pop(context);
              },
              child: const CustomTextButton(
                buttonTitle: 'Cancel',
                btnColor: blueSecondary,
                txtColor: bluePrimary,
                btnHeight: 40,
                txtSize: 14,
              ),
            ),
          ),
          SizedBox(width: 16.w),
          SizedBox(
            width: 72.w,
            child: GestureDetector(
              onTap: () {
                calendarController.saveSelectedDate(widget.preset);
                Navigator.pop(context);
                calendarController.resetToggle();
              },
              child: const CustomTextButton(
                buttonTitle: 'Save',
                btnHeight: 40,
                txtSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
