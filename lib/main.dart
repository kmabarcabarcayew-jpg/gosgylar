import 'package:flutter/material.dart';
import 'package:project/pages/detailPage.dart';
import './utils/themes.dart';
import './utils/routes.dart';

void main() {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: themeNotifier,
        builder: (context, currentMode, child) {
          return MaterialApp(
            title: 'Saýlanan goşgylar',
            initialRoute: '/profil',
            routes: appRoutes,
            debugShowCheckedModeBanner: false,
            themeMode: currentMode,
            theme: lightTheme,
            darkTheme: darkTheme,
          );
        });
  }
}
