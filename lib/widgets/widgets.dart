import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:realtime_innovations_assignment/constants/enums.dart';
import 'package:realtime_innovations_assignment/widgets/four_preset_grid.dart';
import 'package:realtime_innovations_assignment/widgets/save_date_row.dart';
import 'package:realtime_innovations_assignment/widgets/six_preset_grid.dart';
import 'calendar_widget.dart';

extension DateTimeExtension on DateTime {
  DateTime next(int day) {
    if (day == weekday) {
      return add(const Duration(days: 7));
    } else {
      return add(
        Duration(
          days: (day - weekday) % DateTime.daysPerWeek,
        ),
      );
    }
  }
}

String formatDate(DateTime date) => DateFormat('dd MMM yyyy').format(date);

void showCalendarDialog({
  required BuildContext context,
  bool is4Preset = false,
  bool is6Preset = false,
}) =>
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            is4Preset ? const FourPresetGrid() : const SizedBox.shrink(),
            is6Preset ? const SixPresetGrid() : const SizedBox.shrink(),
            const CalendarWidget(),
            SaveDateRow(
              preset: is6Preset
                  ? Preset.six
                  : is4Preset
                      ? Preset.four
                      : Preset.none,
            ),
          ],
        ),
      ),
    );
