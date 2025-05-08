import 'package:evently/auth/screens/forget_password_screen.dart';
import 'package:evently/auth/screens/signup_screen.dart';
import 'package:evently/auth/widgets/auth_text_field.dart';
import 'package:evently/common/app_assets.dart';
import 'package:evently/common/app_colors.dart';
import 'package:evently/common/custom_text_styles.dart';
import 'package:evently/common/widgets/custom_main_button.dart';
import 'package:evently/common/widgets/custom_main_outlined_button.dart';
import 'package:evently/common/widgets/localization_switch.dart';
import 'package:evently/home/screens/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/loginScreen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Image.asset(
                  AppImages.splashScreenLogo,
                  height: height * 0.22,
                ),
              ),
              AuthTextField(
                prefixIcon: AppImages.emailIcon,
                hintText: 'Email', //ToDo: localization
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: AuthTextField(
                  prefixIcon: AppImages.passwordIcon,
                  hintText: 'Password', //ToDo: localization
                  isPassword: true,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(ForgetPasswordScreen.routeName);
                  },
                  child: Text(
                    'Forget Password?', //TODO: localization
                    style: CustomTextStyles.style16w700Black.copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.mainColor,
                        color: AppColors.mainColor,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: CustomMainButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                          HomeScreen.routeName); //TODO:edit to pushReplacement
                    },
                    buttonTitle: 'Login'), //ToDo: localization
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Don't Have Account ? ", //ToDo: localization
                        style: Theme.of(context).textTheme.labelMedium),
                    TextSpan(
                      text: 'Create Account', //ToDo: localization
                      style: CustomTextStyles.style16w700Black.copyWith(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.mainColor,
                          color: AppColors.mainColor,
                          fontStyle: FontStyle.italic),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context)
                              .pushNamed(SignupScreen.routeName);
                        },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Or', //TODO:localization
                        style: CustomTextStyles.style16w500Black
                            .copyWith(color: AppColors.mainColor),
                      ),
                    ),
                    Expanded(child: Divider())
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: CustomMainOutlinedButton(
                  onPressed: () {},
                  buttonTitle: 'Login With Google', //TODO:localization
                  icon: SvgPicture.asset(AppImages.googleIcon),
                ),
              ),
              LocalizationSwitch()
            ],
          ),
        ),
      ),
    );
  }
}
