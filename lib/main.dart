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
  final _favorites = new Set<WordPair>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
         title: new Text("Infinite List"),
         centerTitle: true,
         actions: <Widget>[
           new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
         ],
       ),
       body: _buildSuggestions(),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          final tiles = _favorites.map((pair) {
            return new ListTile(title: new Text(pair.asPascalCase));
          });

          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles
          ).toList();

          return new Scaffold(
            appBar: new AppBar(
              title: new Text("Favorites")
            ),
            body: new ListView(children: divided),
          );
        }
      )
    );
  }

  Widget _buildRow(WordPair pair) {
    final bool saved = _favorites.contains(pair);

    return ListTile(
      title: new Text(pair.asPascalCase),
      trailing: new Icon(saved ? Icons.favorite : Icons.favorite_border, color: Colors.redAccent),
      onTap: () {
        setState(() {
          if (saved) {
            _favorites.remove(pair);
          } else {
            _favorites.add(pair);
          }
        });
      },
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