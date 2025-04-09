// lib/utils/helpers.dart
import 'package:flutter_basics/core/constants/category_options.dart';

final Map<String, String> categoryImages = {
  categoryOptions[0]: 'assets/sports.jpg',
  categoryOptions[1]: 'assets/music.jpg',
  categoryOptions[2]: 'assets/history.jpg',
  categoryOptions[3]: 'assets/movie.jpg',
  categoryOptions[4]: 'assets/geography.jpg',
};

String getCategoryImage(String category) {
  final lowerCaseCategory = category.toLowerCase();
  return categoryImages[lowerCaseCategory] ?? 'assets/default.jpg';
}
