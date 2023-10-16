import 'package:clock_app/menu_info.dart';
import 'package:clock_app/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import '../enums.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/animations/animationx.json'),
      backgroundColor: Color(0xFF2E2F41),
      nextScreen: ChangeNotifierProvider(
        create: (context) => MenuInfo(
          MenuType.clock,
          title: 'Clock',
          imageSource: 'assets/clock_icon.png', // Provide the required imageSource
        ),
        child: const HomePage(),
      ),
      splashIconSize: 250,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
