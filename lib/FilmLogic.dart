import 'dart:math';

import 'package:lesson_one/FilmModel.dart';

import 'Language.dart';

 class FilmLogic {
   final random = Random();

  Future<List<FilmModel>> getFilmsList (int count) async {
    List<FilmModel> list = [];

    for(int i = 0; i < count; i ++){
      list.add(FilmModel(
          id: i,
          title: "title" + i.toString(),
          picture: "picture" + i.toString(),
          voteAverage: i % 5,
          releaseDate: "releaseDate" + i.toString(),
          description: "description" + i.toString(),
          language: random.nextBool() ? Language.russian : Language.english
        )
      );
    }

    return list;
  }

  List<FilmModel> getFilteredListByLanguage(List<Language> languages, List<FilmModel> films) {
    List<FilmModel> filteredList = [];

    for (Language language in languages) {
      for (FilmModel film in films) {
        if(film.language == language){
          filteredList.add(film);
        }
      }
    }

    return filteredList;
  }

  List<FilmModel> getFilteredListByVoteAverage(double minVote, List<FilmModel> films) {
    List<FilmModel> filteredList = [];

    for (FilmModel film in films) {
      if(film.voteAverage >= minVote){
        filteredList.add(film);
      }
    }

    return filteredList;
  }
}