import 'package:flutter/material.dart';
import 'package:twitterclone/constants.dart';
import 'package:twitterclone/widgets/postCard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primaryColor: mainBlue,
        colorScheme: ColorScheme.fromSeed(brightness: Brightness.light, seedColor: mainBlue, 
                                          primary: mainBlue, onPrimary: mainBlue)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Twitter", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: Padding(padding: EdgeInsets.all(8.0), 
        child: ListView(
          
          children: [
            // Text("Hello Ghina", style: TextStyle(color: mainBlue),),
            PostCard(),
            PostCard(),
            PostCard(),
            PostCard(),
            PostCard()
        ],),),
        floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
      ),
    );
  }
}

