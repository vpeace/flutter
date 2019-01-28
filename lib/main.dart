import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Image from the net';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: FadeInImage.assetNetwork(
            placeholder: 'assets/tenor.gif',
            image :
            'https://picsum.photos/250?image=8',
//            errorWidget: new Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}