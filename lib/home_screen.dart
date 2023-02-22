import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hang_man/word_bar.dart';
import 'package:http/http.dart';
import 'package:rxdart/rxdart.dart';

import 'hang_man.dart';
import 'keyboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static BehaviorSubject<List> _guessesListStream = BehaviorSubject<List>();
  static Stream<List> get guessesListStream => _guessesListStream.stream;
  static updateStream(String letter, String guessWord, BuildContext ctx) {
    if (_guessesListStream.value.contains(letter)) {
      return;
    }
    List templestcheck = List.from(_guessesListStream.value);

    templestcheck.add(letter);

    List errorlist = [];

    for (int x = 0; x < templestcheck.length; x++) {
      if (!guessWord.contains(templestcheck[x])) {
        errorlist.add(templestcheck[x]);
      }
    }

    int errors = errorlist.length;
    print(errors);
    if (errors > 7) {
      showDialog(
        barrierDismissible: false,
        context: ctx,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Game Over!\n\nYour word was...$guessWord'),
            content: TextButton(
              onPressed: () {
                _guessesListStream.sink.add([]);
                errorlist = [];
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomeScreen()));
              },
              child: Icon(Icons.refresh),
            ),
          );
        },
      );
    } else if (errors == 8) {
      List templest = _guessesListStream.value;
      templest.add(letter);
      _guessesListStream.sink.add(templest);
      List errorlist = [];

      for (int x = 0; x < templest.length; x++) {
        if (!guessWord.contains(templest[x])) {
          errorlist.add(templest[x]);
        }
      }

      showDialog(
        barrierDismissible: false,
        context: ctx,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Game Over!\n\nYour word was...$guessWord'),
            content: TextButton(
              onPressed: () {
                _guessesListStream.sink.add([]);
                errorlist = [];
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomeScreen()));
              },
              child: Icon(Icons.refresh),
            ),
          );
        },
      );
    } else {
      List templest = _guessesListStream.value;
      templest.add(letter);
      _guessesListStream.sink.add(templest);
      List errorlist = [];

      for (int x = 0; x < templest.length; x++) {
        if (!guessWord.contains(templest[x])) {
          errorlist.add(templest[x]);
        }
      }
    }
  }

  static initStream() {
    _guessesListStream.sink.add([]);
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String guessWord = '        ';
  List guessesList = ['a'];

  @override
  void initState() {
    getWord();
    HomeScreen.initStream();
    super.initState();
  }

  getWord() async {
    var responce = await get(
        Uri.parse('https://random-word-api.herokuapp.com/word?length=8'));
    guessWord = jsonDecode(responce.body)[0];
    print(guessWord);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('joe_assets/backround.png'),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HangMan(guessWord: guessWord),
            WordBar(
              guessList: guessesList,
              guessWord: guessWord,
            ),
            Keyboard(
              guessWord: guessWord,
            ),
          ],
        ),
      ),
    );
  }
}
