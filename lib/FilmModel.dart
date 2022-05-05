import 'package:lesson_one/AbstractFilmModel.dart';
import 'package:lesson_one/Language.dart';
import 'package:lesson_one/Converter.dart';

class FilmModel extends AbstractFilmModel with Convertor {
  FilmModel({
    required int id,
    required String title,
    required String picture,
    required double voteAverage,
    required String releaseDate,
    required String description,
    required Language language
  }) : super(
      id: id,
      title: title,
      picture: picture,
      voteAverage: voteAverage,
      releaseDate: releaseDate,
      description: description,
      language: language
  );
}


