import 'package:clock_app/alarm_info.dart';
import 'package:clock_app/menu_info.dart';
import 'package:clock_app/theme_data/theme_data.dart';
import 'enums.dart';

List<MenuInfo> menuItems= [
  MenuInfo(MenuType.clock, title: 'Clock', imageSource: 'assets/clock_icon.png'),
  MenuInfo(MenuType.alarm, title: 'Alarm', imageSource: 'assets/alarm_icon.png'),
  MenuInfo(MenuType.timer, title: 'Timer', imageSource: 'assets/timer_icon.png'),
  MenuInfo(MenuType.stopwatch, title: 'Stopwatch', imageSource: 'assets/stopwatch_icon.png'),
];

List<AlarmInfo> alarms=[
  AlarmInfo(DateTime.now().add(Duration(hours: 1)),description: "Off",gradientColors:GradientColors.fire ),
  AlarmInfo(DateTime.now().add(Duration(hours: 2)),description: "Sport",gradientColors: GradientColors.sea),
  AlarmInfo(DateTime.now().add(Duration(hours: 2)),description: "Sport",gradientColors: GradientColors.sea),
];
