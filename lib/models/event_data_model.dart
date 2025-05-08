import 'package:evently/models/category_slider_model.dart';

class EventDataModel {
  String title;
  String description;
  bool isFavourite;
  DateTime dateTime;
  CategoryValues categoryValues;

  EventDataModel({
    required this.title,
    required this.description,
    required this.isFavourite,
    required this.dateTime,
    required this.categoryValues,
  });

  static List<EventDataModel> get dummyData => List.generate(
    8,
    (index) => EventDataModel(
        title: 'title$index',
        description: 'description$index '*index*2,
        isFavourite: index % 2 == 0,
        dateTime: DateTime(2025,5,index),
        categoryValues: CategoryValues.bookClub),
  );
}
