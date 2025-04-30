import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../common/app_assets.dart';
import '../../common/app_colors.dart';
import '../../common/custom_text_styles.dart';
import '../../common/widgets/custom_main_button.dart';
import '../../common/widgets/localization_switch.dart';
import '../widgets/auth_text_field.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = '/signupScreen';

  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).dividerColor,
          ),
        ),
        title: Text(
          'Register', //TODO:localization
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).dividerColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: AuthTextField(
                prefixIcon: AppImages.personIcon,
                hintText: 'Name', //ToDo: localization
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
            AuthTextField(
              prefixIcon: AppImages.passwordIcon,
              hintText: 'Re Password', //ToDo: localization
              isPassword: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: CustomMainButton(
                  onPressed: () {},
                  buttonTitle: 'Create Account'), //ToDo: localization
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Already Have Account ? ", //ToDo: localization
                      style: Theme.of(context).textTheme.labelMedium),
                  TextSpan(
                    text: 'Login', //ToDo: localization
                    style: CustomTextStyles.style16w700Black.copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.mainColor,
                        color: AppColors.mainColor,
                        fontStyle: FontStyle.italic),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).pop();
                      },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: LocalizationSwitch(),
            )
          ],
        ),
      ),
    );
  }
}
