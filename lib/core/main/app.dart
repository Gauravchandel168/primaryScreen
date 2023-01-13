import 'package:flutter/material.dart';
import 'package:primary/presentation/routers/app_router.dart';
import '../themes/app_theme.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AllScreen",
      theme: appLightTheme(context),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.home,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}