import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hello Flutter',
      home: new Scaffold(
        appBar: AppBar(title: new Text("Hello Abu El-Dahab"),),
        body: ListView.builder(
          itemCount: 10000,
          itemBuilder: (BuildContext context, int index){
            return new RandomWords();
          },
        ),
      )
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final WordPair wordPair = new WordPair.random();
    return new ListTile(
       title: Text(wordPair.asPascalCase),
       subtitle: Text('Another Random: ' + (new WordPair.random()).asPascalCase),
      );
 
  }
}
