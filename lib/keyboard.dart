import 'package:flutter/material.dart';
import 'package:hang_man/home_screen.dart';

import 'keyboard_button.dart';

class Keyboard extends StatelessWidget {
  Keyboard({required this.guessWord});
  String guessWord;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('joe_assets/rickey.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken)),
      ),
      child: StreamBuilder<List>(
          stream: HomeScreen.guessesListStream,
          builder: (context, snapshot) {
            List guessList = snapshot.data ?? [];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    KeyboardButton(
                      label: guessList.contains('a') ? '' : 'A',
                      onTap: () =>
                          HomeScreen.updateStream('a', guessWord, context),
                    ),
                    KeyboardButton(
                        label: guessList.contains('b') ? '' : 'B',
                        onTap: () =>
                            HomeScreen.updateStream('b', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('c') ? '' : 'C',
                        onTap: () =>
                            HomeScreen.updateStream('c', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('d') ? '' : 'D',
                        onTap: () =>
                            HomeScreen.updateStream('d', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('e') ? '' : 'E',
                        onTap: () =>
                            HomeScreen.updateStream('e', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('f') ? '' : 'F',
                        onTap: () =>
                            HomeScreen.updateStream('f', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('g') ? '' : 'G',
                        onTap: () =>
                            HomeScreen.updateStream('g', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('h') ? '' : 'H',
                        onTap: () =>
                            HomeScreen.updateStream('h', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('i') ? '' : 'I',
                        onTap: () =>
                            HomeScreen.updateStream('i', guessWord, context)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    KeyboardButton(
                        label: guessList.contains('j') ? '' : 'J',
                        onTap: () =>
                            HomeScreen.updateStream('j', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('k') ? '' : 'K',
                        onTap: () =>
                            HomeScreen.updateStream('k', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('l') ? '' : 'L',
                        onTap: () =>
                            HomeScreen.updateStream('l', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('m') ? '' : 'M',
                        onTap: () =>
                            HomeScreen.updateStream('m', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('n') ? '' : 'N',
                        onTap: () =>
                            HomeScreen.updateStream('n', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('o') ? '' : 'O',
                        onTap: () =>
                            HomeScreen.updateStream('o', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('p') ? '' : 'P',
                        onTap: () =>
                            HomeScreen.updateStream('p', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('q') ? '' : 'Q',
                        onTap: () =>
                            HomeScreen.updateStream('q', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('r') ? '' : 'R',
                        onTap: () =>
                            HomeScreen.updateStream('r', guessWord, context)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    KeyboardButton(
                        label: guessList.contains('s') ? '' : 'S',
                        onTap: () =>
                            HomeScreen.updateStream('s', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('t') ? '' : 'T',
                        onTap: () =>
                            HomeScreen.updateStream('t', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('u') ? '' : 'U',
                        onTap: () =>
                            HomeScreen.updateStream('u', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('v') ? '' : 'V',
                        onTap: () =>
                            HomeScreen.updateStream('v', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('w') ? '' : 'W',
                        onTap: () =>
                            HomeScreen.updateStream('w', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('x') ? '' : 'X',
                        onTap: () =>
                            HomeScreen.updateStream('x', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('y') ? '' : 'Y',
                        onTap: () =>
                            HomeScreen.updateStream('y', guessWord, context)),
                    KeyboardButton(
                        label: guessList.contains('z') ? '' : 'Z',
                        onTap: () =>
                            HomeScreen.updateStream('z', guessWord, context)),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
