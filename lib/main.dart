import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lesson_one/Converter.dart';
import 'package:lesson_one/FilmModel.dart';
import 'package:lesson_one/Language.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Лучшее приложение для фильмов',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Фильмы',
    ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    List<FilmModel> list = [
      FilmModel(
        id: 0,
        title: 'Брат',
        voteAverage: 8.3,
        picture:
        'https://avatars.mds.yandex.net/get-kinopoisk-image/1704946/e9008e2f-433f-43b0-b9b8-2ea8e3fb6c9b/600x900',
        releaseDate: '1997',
        description:
        'Дембель Данила Багров защищает слабых в Петербурге 1990-х. Фильм, сделавший Сергея Бодрова народным героем.',
        language: Language.russian,
      ),
      FilmModel(
        id: 1,
        title: 'Служебный роман',
        voteAverage: 8.3,
        picture:
        'https://avatars.mds.yandex.net/get-kinopoisk-image/1777765/fd4e75bb-a6fe-46ef-86cd-0f470334fcbd/600x900',
        releaseDate: '1977',
        description:
        'Робкий холостяк решает приударить за строгой начальницей. Комедия Эльдара Рязанова, классика советского кино.',
        language: Language.russian,
      )
    ];

    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            list.length,
                (int index) =>
                Film(filmModel: list[index]),
          ),
        ),
      ),
    );
  }
}

class Film extends StatelessWidget {
  const Film({required this.filmModel,Key? key}) : super(key: key);

  final FilmModel filmModel;
  @override

  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                filmModel.title,
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(filmModel.toPrettyString(filmModel.language) ?? "Недоступен"),
              Image.network(
                filmModel.picture,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
