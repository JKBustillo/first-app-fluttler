import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() {
  runApp(new MaterialApp(
    home: MyRandomWords(),
  ));
}

class MyRandomWords extends StatefulWidget {

  @override
  _MyRandomWordsState createState() => _MyRandomWordsState();
}

class _MyRandomWordsState extends State<MyRandomWords> {
  final _suggestions = <WordPair>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
         title: new Text("Infinite List"),
         centerTitle: true,
       ),
       body: _buildSuggestions(),
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: new Text(pair.asPascalCase)
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();

        final index = i ~/ 2;

        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }
}