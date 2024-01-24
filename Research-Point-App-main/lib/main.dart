import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:researchcore/screens/login-screen.dart';
import 'providers/favorites_provider.dart';
import 'utils/theme_util.dart';
import 'package:get/get.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}
///a
void main() async {
  // Ensure that Flutter is initialized.
  WidgetsFlutterBinding.ensureInitialized();

  // Set the system overlay style.
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: ThemeUtil.primaryColor),
  );

  // Run the app.
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<FavoritesProvider>(
          create: (_) => FavoritesProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Research Point',
        theme: ThemeUtil.defaultTheme(),
        home: const LoginView());
  }
}
