import 'package:flutter/foundation.dart';
import 'package:clock_app/enums.dart';

class MenuInfo with ChangeNotifier {
  MenuType menuType;
  String title;
  String imageSource;

  MenuInfo(this.menuType, {required this.title, required this.imageSource});

  void updateMenu(MenuInfo menuInfo) {
    this.menuType = menuInfo.menuType;
    this.title = menuInfo.title;
    this.imageSource = menuInfo.imageSource;

    // Important
    notifyListeners();
  }
}

