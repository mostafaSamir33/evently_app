import 'package:evently/auth/screens/login_screen.dart';
import 'package:evently/auth/screens/signup_screen.dart';
import 'package:evently/auth/screens/forget_password_screen.dart';
import 'package:evently/common/app_themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        LoginScreen.routeName:(_)=>LoginScreen(),
        SignupScreen.routeName:(_)=>SignupScreen(),
        ForgetPasswordScreen.routeName:(_)=>ForgetPasswordScreen(),
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}
