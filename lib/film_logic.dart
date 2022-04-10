import 'package:lesson_one/film.dart';

import 'language.dart';

 class FilmLogic {
  Future<List<Film>> getFilmsList (int count) async {
    List<Film> list = [];

    for(int i = 0; i < count; i ++){
      list.add(Film(
          id: i.toString(),
          title: "title" + i.toString(),
          picture: "picture" + i.toString(),
          voteAverage: i % 5,
          releaseDate: "releaseDate" + i.toString(),
          description: "description" + i.toString(),
          language: "language" + i.toString()
        )
      );
    }

    return list;
  }

  List<Film> getFilteredListByLanguage(List<Language> languages, List<Film> films) {
    List<Film> filteredList = [];

    for (Language language in languages) {
      for (Film film in films) {
        if(film.convert(film.language) == language){
          filteredList.add(film);
        }
      }
    }

    return filteredList;
  }

  List<Film> getFilteredListByVoteAverage(double minVote, List<Film> films) {
    List<Film> filteredList = [];

    for (Film film in films) {
      if(film.voteAverage >= minVote){
        filteredList.add(film);
      }
    }

    return filteredList;
  }
}