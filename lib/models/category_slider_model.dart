import 'package:evently/common/app_assets.dart';
import 'package:flutter/material.dart';

class CategorySliderModel {
  CategoryValues categoryValues;
  String title;
  IconData icon;

  CategorySliderModel(
      {required this.categoryValues, required this.title, required this.icon});

  static List<CategorySliderModel> get homeTabCategory => [
        CategorySliderModel(
            categoryValues: CategoryValues.all,
            title: CategoryValues.all.toTitle(),
            icon: Icons.explore_outlined),
        CategorySliderModel(
            categoryValues: CategoryValues.sport,
            title: CategoryValues.sport.toTitle(),
            icon: Icons.directions_bike_outlined),
        CategorySliderModel(
            categoryValues: CategoryValues.birthday,
            title: CategoryValues.birthday.toTitle(),
            icon: Icons.cake_outlined),
        CategorySliderModel(
            categoryValues: CategoryValues.bookClub,
            title: CategoryValues.bookClub.toTitle(),
            icon: Icons.menu_book_outlined),
      ];
}

enum CategoryValues {
  all,
  sport,
  birthday,
  bookClub;

  String toTitle() {
    return name[0].toUpperCase() + name.substring(1);
  }

  String getImage() {
    switch (this) {
      case CategoryValues.all:
        return '';
      case CategoryValues.sport:
        return AppImages.sportImage;
      case CategoryValues.birthday:
        return AppImages.birthdayImage;
      case CategoryValues.bookClub:
        return AppImages.bookClubImage;
    }
  }
}
