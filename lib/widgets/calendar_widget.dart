import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:realtime_innovations_assignment/constants/colors.dart';
import 'package:realtime_innovations_assignment/constants/text_style.dart';
import 'package:realtime_innovations_assignment/controller/calendar_date_controller.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  final calendarController = Get.put(CalendarDateController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: TableCalendar(
        firstDay: DateTime.utc(2022, 1, 31),
        lastDay: DateTime.utc(2023, 2, 28),
        focusedDay: calendarController.toggleDate.value,
        startingDayOfWeek: StartingDayOfWeek.sunday,
        rowHeight: 42.h,
        calendarFormat: CalendarFormat.month,
        availableGestures: AvailableGestures.horizontalSwipe,
        selectedDayPredicate: (day) {
          return isSameDay(day, calendarController.toggleDate.value);
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            calendarController.toggleDate.value = selectedDay;
          });
        },
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: robotoBlack18w6,
          leftChevronPadding: EdgeInsets.only(left: 56.w),
          rightChevronPadding: EdgeInsets.only(right: 56.w),
          leftChevronIcon: Icon(
            Icons.arrow_left_rounded,
            color: blackSecondary,
            size: 40.h,
          ),
          rightChevronIcon: Icon(
            Icons.arrow_right_rounded,
            color: blackSecondary,
            size: 40.h,
          ),
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: robotoBlack15w4,
          weekendStyle: robotoBlack15w4,
        ),
        calendarStyle: CalendarStyle(
          outsideDaysVisible: true,
          isTodayHighlighted: true,
          todayTextStyle: robotobluePri15w4,
          todayDecoration: const BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),
          selectedDecoration: const BoxDecoration(
            color: bluePrimary,
            shape: BoxShape.circle,
          ),
          selectedTextStyle: robotoWhite15w4,
          defaultTextStyle: robotoBlack15w4,
          weekendTextStyle: robotoBlack15w4,
          outsideTextStyle: robotoWhiteSec15w4,
        ),
      ),
    );
  }
}
