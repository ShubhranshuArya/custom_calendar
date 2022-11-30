import 'package:get/get.dart';
import 'package:realtime_innovations_assignment/constants/enums.dart';
import 'package:realtime_innovations_assignment/widgets/widgets.dart';

class CalendarDateController extends GetxController {
  Rx<DateTime> toggleDate = DateTime.now().obs;

  Rx<DateTime> savedDate1 = DateTime.utc(2001, 05, 31).obs;
  Rx<DateTime> savedDate2 = DateTime.utc(2001, 05, 31).obs;
  Rx<DateTime> savedDate3 = DateTime.utc(2001, 05, 31).obs;

  DateTime today = DateTime.now();

  void saveSelectedDate(Preset preset) {
    if (preset == Preset.none) {
      savedDate1.value = toggleDate.value;
    } else if (preset == Preset.four) {
      savedDate2.value = toggleDate.value;
    } else {
      savedDate3.value = toggleDate.value;
    }
  }

  void removeSelectedDate(Preset preset) {
    if (preset == Preset.none) {
      savedDate1.value = DateTime.utc(2001, 05, 31);
    } else if (preset == Preset.four) {
      savedDate2.value = DateTime.utc(2001, 05, 31);
    } else {
      savedDate3.value = DateTime.utc(2001, 05, 31);
    }
  }

  void resetToggle() {
    toggleDate.value = DateTime.now();
  }

  void presetDateChange(DateTime presetDate) {
    toggleDate.value = presetDate;
  }

  void nextTue() {
    presetDateChange(today.next(DateTime.tuesday));
  }

  void nextSun() {
    presetDateChange(today.next(DateTime.sunday));
  }

  void nextSat() {
    presetDateChange(today.next(DateTime.saturday));
  }

  void nextDay() {
    presetDateChange(
      DateTime(
        today.year,
        today.month,
        today.day + 1,
      ),
    );
  }

  void yestDate() {
    presetDateChange(
      DateTime(
        today.year,
        today.month,
        today.day - 1,
      ),
    );
  }

  void twoMonthLater() {
    presetDateChange(
      DateTime(
        today.year,
        today.month,
        today.day + 60,
      ),
    );
  }

  void oneMonthLater() {
    presetDateChange(
      DateTime(
        today.year,
        today.month,
        today.day + 30,
      ),
    );
  }

  void fifteenDaysLater() {
    presetDateChange(
      DateTime(
        today.year,
        today.month,
        today.day + 15,
      ),
    );
  }
}
