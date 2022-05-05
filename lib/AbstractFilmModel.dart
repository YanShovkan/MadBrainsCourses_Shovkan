import 'package:lesson_one/Language.dart';

abstract class AbstractFilmModel {
  int id;
  String title;
  String picture;
  double voteAverage;
  String releaseDate;
  String description;
  Language language;

  AbstractFilmModel({
    required this.id,
    required this.title,
    required this.picture,
    required this.voteAverage,
    required this.releaseDate,
    required this.description,
    required this.language
  });
}
