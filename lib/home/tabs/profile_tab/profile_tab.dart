import 'package:evently/common/app_colors.dart';
import 'package:evently/common/custom_text_styles.dart';
import 'package:evently/home/tabs/profile_tab/widgets/custom_drop_down_menu.dart';
import 'package:evently/home/tabs/profile_tab/widgets/profile_tab_header.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileTabHeader(),
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16),
          child: Text(
            'Language', //TODO:localization
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
          ),
        ),
        CustomDropDownMenu(),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Theme', //TODO:localization
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
          ),
        ),
        CustomDropDownMenu(),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
          child: FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: AppColors.red,
                padding: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16))),
            child: Row(
              children: [
                Icon(
                  Icons.exit_to_app_rounded,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Logout', //TODO:localization
                  style: CustomTextStyles.style18w400Black
                      .copyWith(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
