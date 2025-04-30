import 'package:evently/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthTextField extends StatefulWidget {
  final String? prefixIcon;
  final String? hintText;
  final bool? isPassword;

  const AuthTextField(
      {super.key, this.hintText, this.prefixIcon, this.isPassword});

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  late bool isObscure = widget.isPassword ?? false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Theme.of(context).splashColor,
      obscureText: isObscure,
      style: Theme.of(context).textTheme.labelMedium,
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(16),
            child: SvgPicture.asset(widget.prefixIcon ?? ''),
          ),
          prefixIconColor: Theme.of(context).splashColor,
          suffixIcon: widget.isPassword == true
              ? GestureDetector(
                  onTap: () {
                    isObscure = !isObscure;
                    setState(() {});
                  },
                  child: isObscure
                      ? Icon(Icons.visibility_off_outlined)
                      : Icon(Icons.visibility_outlined))
              : null,
          hintText: widget.hintText,
          hintStyle: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: Theme.of(context).splashColor),
          border: customBorder(),
          enabledBorder: customBorder(),
          focusedBorder: customBorder(focusColor: AppColors.mainColor),
          errorBorder: customBorder(errorColor: AppColors.red),
          focusedErrorBorder: customBorder(errorColor: AppColors.red)),
    );
  }

  OutlineInputBorder customBorder({Color? focusColor, Color? errorColor}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
            color: focusColor ?? errorColor ?? Theme.of(context).hoverColor));
  }
}
