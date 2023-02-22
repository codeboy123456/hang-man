import 'package:flutter/material.dart';
import 'package:hang_man/home_screen.dart';

class WordBar extends StatelessWidget {
  WordBar({required this.guessWord, required this.guessList});
  String guessWord;
  List guessList;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List>(
        stream: HomeScreen.guessesListStream,
        builder: (context, snapshot) {
          return Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          (snapshot.data ?? []).contains(guessWord[0])
                              ? guessWord[0].toUpperCase()
                              : '',
                          style: TextStyle(fontSize: 36),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          (snapshot.data ?? []).contains(guessWord[1])
                              ? guessWord[1].toUpperCase()
                              : '',
                          style: TextStyle(fontSize: 36),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          (snapshot.data ?? []).contains(guessWord[2])
                              ? guessWord[2].toUpperCase()
                              : '',
                          style: TextStyle(fontSize: 36),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          (snapshot.data ?? []).contains(guessWord[3])
                              ? guessWord[3].toUpperCase()
                              : '',
                          style: TextStyle(fontSize: 36),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          (snapshot.data ?? []).contains(guessWord[4])
                              ? guessWord[4].toUpperCase()
                              : '',
                          style: TextStyle(fontSize: 36),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          (snapshot.data ?? []).contains(guessWord[5])
                              ? guessWord[5].toUpperCase()
                              : '',
                          style: TextStyle(fontSize: 36),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          (snapshot.data ?? []).contains(guessWord[6])
                              ? guessWord[6].toUpperCase()
                              : '',
                          style: TextStyle(fontSize: 36),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          (snapshot.data ?? []).contains(guessWord[7])
                              ? guessWord[7].toUpperCase()
                              : '',
                          style: TextStyle(fontSize: 36),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
