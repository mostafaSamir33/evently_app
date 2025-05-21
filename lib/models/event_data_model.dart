import 'package:evently/models/category_slider_model.dart';

class EventDataModel {
  String id;
  String title;
  String description;
  bool isFavourite;
  DateTime dateTime;
  CategoryValues categoryValues;

  EventDataModel({
    this.id = '',
    required this.title,
    required this.description,
    this.isFavourite = false,
    required this.dateTime,
    required this.categoryValues,
  });

  static List<EventDataModel> get dummyData => List.generate(
        8,
        (index) => EventDataModel(
            title: 'title$index',
            description: 'description$index ' * index * 2,
            isFavourite: index % 2 == 0,
            dateTime: DateTime(2025, 5, index),
            categoryValues: CategoryValues.bookClub),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'isFavourite': isFavourite,
      'dateTime': dateTime.millisecondsSinceEpoch,
      'categoryValues': categoryValues.toJson(),
    };
  }

  static EventDataModel fromJson(Map<String, dynamic> json) {
    return EventDataModel(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        isFavourite: json['isFavourite'],
        dateTime: DateTime.fromMillisecondsSinceEpoch(json['dateTime']),
        categoryValues: CategoryValues.fromJson(json['categoryValues']));
  }
}
