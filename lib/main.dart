import 'package:flutter/material.dart';
import 'screens/mobileScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/desctopScreen.dart';
import 'screens/tabletScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 900),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Responcive Task App',
          home: const ResponsiveLayout(),
        );
      },
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileScreen();
        } else if (constraints.maxWidth < 1199) {
          return const TabletScreen();
        } else {
          return const DesctopScreen();
        }
      },
    );
  }
}
