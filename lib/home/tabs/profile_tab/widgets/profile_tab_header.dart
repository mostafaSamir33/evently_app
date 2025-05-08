import 'package:evently/common/app_assets.dart';
import 'package:evently/common/app_colors.dart';
import 'package:evently/common/custom_text_styles.dart';
import 'package:flutter/material.dart';

class ProfileTabHeader extends StatelessWidget {
  const ProfileTabHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(64))),
      child: SafeArea(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(1000),
                      bottomLeft: Radius.circular(1000),
                      bottomRight: Radius.circular(1000)),
                  child: Image.asset(
                    AppImages.routeImage,
                    width: width * 0.31,
                    height: height * 0.14,
                  )),
            ),
            SizedBox(
              width: width * 0.51,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Safwat',
                    style: CustomTextStyles.style18w700Black.copyWith(
                        color: Theme.of(context).splashColor, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'johnsafwat.route@gmail.com',
                    style: CustomTextStyles.style16w500Black
                        .copyWith(color: Theme.of(context).splashColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
