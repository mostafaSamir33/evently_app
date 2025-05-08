import 'package:evently/models/category_slider_model.dart';
import 'package:evently/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/widgets/categories_slider.dart';

class HomeTabHeader extends StatefulWidget {
  const HomeTabHeader({super.key});

  @override
  State<HomeTabHeader> createState() => _HomeTabHeaderState();
}

class _HomeTabHeaderState extends State<HomeTabHeader> {
  CategoryValues selectedId =
      CategorySliderModel.homeTabCategory.first.categoryValues;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).highlightColor,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(24))),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back ✨', //TODO:localization
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(color: Theme.of(context).splashColor),
                        ),
                        Text(
                          'John Safwat',
                          //TODO:localization //TODO:edit to user name
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: Theme.of(context).splashColor,
                                  fontSize: 24),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            context.read<ThemeProvider>().changeAppTheme();
                          },
                          padding: EdgeInsets.zero,
                          color: Theme.of(context).splashColor,
                          highlightColor: Theme.of(context).splashColor,
                          icon: Icon(
                            context.watch<ThemeProvider>().themeMode ==
                                    ThemeMode.dark
                                ? Icons.dark_mode_outlined
                                : Icons.light_mode_outlined,
                            size: 28,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        SizedBox(
                          height: 35,
                          width: 35,
                          child: FilledButton(
                            onPressed: () {},
                            style: FilledButton.styleFrom(
                              backgroundColor: Theme.of(context).splashColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              padding: EdgeInsets.zero,
                              overlayColor: Theme.of(context).splashColor,
                            ),
                            child: Text(
                              'EN', //TODO:localization
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: Theme.of(context).highlightColor),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Theme.of(context).splashColor,
                    ),
                    Text(
                      'Cairo , Egypt',
                      //TODO:localization //TODO:edit to user location
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: Theme.of(context).splashColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: CategoriesSlider(
                  categoryValues: selectedId,
                  onSelect: (p0) {
                    selectedId = p0;
                    setState(() {});
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
