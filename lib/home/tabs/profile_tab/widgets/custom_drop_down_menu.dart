import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/custom_text_styles.dart';
import '../../../../providers/theme_provider.dart';

class CustomDropDownMenu extends StatefulWidget {
  const CustomDropDownMenu({super.key});

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu>
    with ChangeNotifier {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: DropdownMenu(
        menuHeight: height,
        width: width - 30,
        hintText: 'Choose Language',
        onSelected: (value) {
          // context.read()<ThemeProvider>().changeAppThemeForDropDownMenu(value);
          // notifyListeners();

          // context.read()<ThemeProvider>().themeMode=value;
          // notifyListeners();

          // value == AppColors.secLightColor
          //     ? context.read()<ThemeProvider>().themeMode = ThemeMode.light
          //     : context.read()<ThemeProvider>().themeMode = ThemeMode.dark;
          // notifyListeners();

          // context.watch<ThemeProvider>().themeMode == ThemeMode.light
          //     ? value == AppColors.secLightColor
          //     : value == AppColors.secDarkColor;
        },
        trailingIcon: Icon(
          Icons.arrow_drop_down_rounded,
          size: 40,
          color: AppColors.mainColor,
        ),
        selectedTrailingIcon: Icon(
          Icons.arrow_drop_up_rounded,
          size: 40,
          color: AppColors.mainColor,
        ),
        textStyle: CustomTextStyles.style18w700Black
            .copyWith(color: AppColors.mainColor, fontSize: 20),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: CustomTextStyles.style18w700Black
              .copyWith(color: AppColors.mainColor, fontSize: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.mainColor, width: 1.5),
          ),
        ),
        menuStyle: MenuStyle(
          padding: WidgetStatePropertyAll(EdgeInsets.zero),
          backgroundColor:
              WidgetStatePropertyAll(Theme.of(context).splashColor),
          shadowColor: WidgetStatePropertyAll(Colors.black),
          surfaceTintColor:
              WidgetStatePropertyAll(Theme.of(context).splashColor),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: AppColors.mainColor, width: 1.5)),
          ),
        ),
        dropdownMenuEntries: [
          DropdownMenuEntry(
            value: ThemeMode.light,
            label: 'Light',
            style: ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(Theme.of(context).splashColor),
              foregroundColor: WidgetStatePropertyAll(AppColors.mainColor),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              textStyle: WidgetStatePropertyAll(
                CustomTextStyles.style18w700Black
                    .copyWith(color: AppColors.mainColor, fontSize: 20),
              ),
            ),
          ),
          DropdownMenuEntry(
            value: ThemeMode.dark,
            label: 'Dark',
            style: ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(Theme.of(context).splashColor),
              foregroundColor: WidgetStatePropertyAll(AppColors.mainColor),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              textStyle: WidgetStatePropertyAll(
                CustomTextStyles.style18w700Black
                    .copyWith(color: AppColors.mainColor, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
