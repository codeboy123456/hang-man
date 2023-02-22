import 'package:flutter/material.dart';

import 'home_screen.dart';

class HangMan extends StatelessWidget {
  HangMan({required this.guessWord});
  String guessWord;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List>(
        stream: HomeScreen.guessesListStream,
        builder: (context, snapshot) {
          List errorlist = [];
          if (snapshot.data != null) {
            for (int x = 0; x < snapshot.data!.length; x++) {
              if (!guessWord.contains(snapshot.data![x])) {
                errorlist.add(snapshot.data![x]);
              }
            }
          }

          int errors = errorlist.length;
          errors = errors > 8 ? 8 : errors;

          return SizedBox(
            width: 300,
            height: 300,
            child: Stack(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  child: Image.asset('joe_assets/1$errors.png'),
                ),
              ],
            ),
          );
        });
  }
}
