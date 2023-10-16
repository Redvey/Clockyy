import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:clock_app/menu_info.dart';
import 'package:clock_app/screens/alarm_page.dart';
import 'package:clock_app/data.dart';
import 'package:clock_app/enums.dart';
import 'clock_page.dart';
import 'package:clock_app/theme_data/theme_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.pageBackgroundColor,
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: menuItems.map((currentMenuInfo) {
              return buildMenuButton(context, currentMenuInfo);
            }).toList(),
          ),
          VerticalDivider(
            color: Color(0xFF45465E),
            width: 1,
          ),
          Expanded(
            child: Consumer<MenuInfo>(
              builder: (BuildContext context, menuInfo, Widget? child) {
                if (menuInfo.menuType == MenuType.clock)
                  return ClockPage();
                else if(menuInfo.menuType == MenuType.alarm)
                  return AlarmPage();
                else
                return Container(); // You can return an empty container or any other suitable widget.
              },
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton buildMenuButton(BuildContext context, MenuInfo currentMenuInfo) {
    var menuInfo = Provider.of<MenuInfo>(context, listen: false);
    return ElevatedButton(
      onPressed: () {
        var menuInfo = Provider.of<MenuInfo>(context, listen: false);
        menuInfo.updateMenu(currentMenuInfo);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: currentMenuInfo.menuType == menuInfo.menuType
            ? CustomColors.menuBackgroundColor
            : Colors.transparent,
        elevation: 0,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 0),
      ),
      child: Column(
        children: [
          Image.asset(currentMenuInfo.imageSource, scale: 1.5),
          Text(
            currentMenuInfo.title,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
