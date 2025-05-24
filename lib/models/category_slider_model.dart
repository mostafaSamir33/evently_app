import 'package:evently/common/app_assets.dart';
import 'package:flutter/material.dart';

class CategorySliderModel {
  CategoryValues categoryValues;
  String title;
  IconData icon;

  CategorySliderModel(
      {required this.categoryValues, required this.title, required this.icon});

  static List<CategorySliderModel> get homeTabCategory {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   var isEnglish= context.watch<ThemeProvider>().themeMode ==
    //       ThemeMode.dark
    // });
    return [
        CategorySliderModel(
            categoryValues: CategoryValues.all,
            title: CategoryValues.all.name,
            icon: Icons.explore_outlined),
        CategorySliderModel(
            categoryValues: CategoryValues.sport,
            title: CategoryValues.sport.name,
            icon: Icons.directions_bike_outlined),
        CategorySliderModel(
            categoryValues: CategoryValues.birthday,
            title: CategoryValues.birthday.name,
            icon: Icons.cake_outlined),
        CategorySliderModel(
            categoryValues: CategoryValues.bookClub,
            title: CategoryValues.bookClub.name,
            icon: Icons.menu_book_outlined),
      ];
  }

  static List<CategorySliderModel> get createEventScreenCategory => [
        CategorySliderModel(
            categoryValues: CategoryValues.bookClub,
            title: CategoryValues.bookClub.name,
            icon: Icons.menu_book_outlined),
        CategorySliderModel(
            categoryValues: CategoryValues.sport,
            title: CategoryValues.sport.name,
            icon: Icons.directions_bike_outlined),
        CategorySliderModel(
            categoryValues: CategoryValues.birthday,
            title: CategoryValues.birthday.name,
            icon: Icons.cake_outlined),
        CategorySliderModel(
            categoryValues: CategoryValues.all,
            title: CategoryValues.all.name,

            icon: Icons.explore_outlined),
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

  String getImage(bool? isDark) {
    switch (this) {
      case CategoryValues.all:
        return isDark == true
            ? AppImages.allImageDark
            : AppImages.allImageLight;
      case CategoryValues.sport:
        return isDark == true
            ? AppImages.sportImageDark
            : AppImages.sportImageLight;
      case CategoryValues.birthday:
        return isDark == true
            ? AppImages.birthdayImageDark
            : AppImages.birthdayImageLight;
      case CategoryValues.bookClub:
        return isDark == true
            ? AppImages.bookClubImageDark
            : AppImages.bookClubImageLight;
    }
  }
  
  String getName(isEnglish){
    if(isEnglish){
      return toTitle();
    }else if(name==all.name){
      return 'الكل';
    }else if(name==sport.name){
      return 'رياضة';
    }else if(name==birthday.name){
      return 'عيد ميلاد';
    }else {
      return 'نادي الكتاب';
    }
  }

  String toJson() {
    return name;
  }

 static CategoryValues fromJson(String json) {
    if (json == sport.name) {
      return sport;
    } else if (json == birthday.name) {
      return birthday;
    } else if (json == bookClub.name) {
      return bookClub;
    } else {
      return all;
    }
  }
}
