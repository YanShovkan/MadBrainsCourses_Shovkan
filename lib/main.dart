import 'package:flutter/material.dart';
import 'package:lesson_one/film_logic.dart';

import 'film.dart';

Future<void> main() async {
  FilmLogic filmLogic = FilmLogic();
  List<Film> list = await filmLogic.getFilmsList(15);


  runApp(MaterialApp(
      home:  Scaffold(
        body:
          Column(
              children: [
                SizedBox(height: 400,
                    child: ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: list.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(list[index].title, style: const TextStyle(fontSize: 22)),
                                  Text("Средняя оценка: ${list[index].voteAverage}", style: const TextStyle(fontSize: 18))
                                ],
                              )
                          );
                        }
                    )
                )
                ,
                ElevatedButton(
                    child: Text("Click", style: TextStyle(fontSize: 22)),
                    onPressed:(){

                    }
                )
              ])
          ,
        appBar: AppBar(title: const Text("SHOVKAN APP")),)
  ));
}
  


