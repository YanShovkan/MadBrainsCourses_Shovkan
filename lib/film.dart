import 'package:lesson_one/abstract_film.dart';
import 'package:lesson_one/converter.dart';

class Film extends AbstractFilm with Convertor {
  Film({
    required String id,
    required String title,
    required String picture,
    required double voteAverage,
    required String releaseDate,
    required String description,
    required String language
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


