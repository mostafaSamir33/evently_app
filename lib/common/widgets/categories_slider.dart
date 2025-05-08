import 'package:evently/common/custom_text_styles.dart';
import 'package:evently/models/category_slider_model.dart';
import 'package:flutter/material.dart';

class CategoriesSlider extends StatelessWidget {
  final CategoryValues categoryValues;
  final void Function(CategoryValues) onSelect;

  const CategoriesSlider({super.key, required this.categoryValues, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            CategorySliderModel currentCategoryModel =
                CategorySliderModel.homeTabCategory[index];
            return GestureDetector(
              onTap: () {
                onSelect(currentCategoryModel.categoryValues);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                    color: currentCategoryModel.categoryValues == categoryValues
                        ? Theme.of(context).disabledColor
                        : null,
                    borderRadius: BorderRadius.circular(46),
                    border: Border.all(color: Theme.of(context).disabledColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      currentCategoryModel.icon,
                      color: currentCategoryModel.categoryValues == categoryValues
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).splashColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      currentCategoryModel.title,
                      style: CustomTextStyles.style16w500Black.copyWith(
                        color: currentCategoryModel.categoryValues == categoryValues
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).splashColor,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: CategorySliderModel.homeTabCategory.length),
    );
  }
}
