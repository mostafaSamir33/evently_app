import 'package:evently/auth/widgets/auth_text_field.dart';
import 'package:evently/common/app_assets.dart';
import 'package:evently/common/widgets/custom_main_button.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const String routeName = '/forgetPasswordScreen';

  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          'Forget Password', //TODO:localization
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).dividerColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Image.asset(AppImages.forgetPasswordScreenImage),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: AuthTextField(
                hintText: 'Email',
                prefixIcon: AppImages.emailIcon,
              ),
            ),
            CustomMainButton(onPressed: () {}, buttonTitle: 'Reset Password')
          ],
        ),
      ),
    );
  }
}
