import 'package:flutter/material.dart';
import 'package:twitterclone/constants.dart';
import 'package:twitterclone/screens/create_tweet_screen.dart';
import 'package:twitterclone/widgets/postCard.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: mainBlue,
          primary: mainBlue,
          onPrimary: mainBlue,
        ),
      ),
      home: const HomePage(), // Moved to a new widget
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Twitter",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: List.generate(
            6,
            (index) => PostCard(
              content: "hello",
              likes: 0,
              comments: 0,
              username: "@username",
              accountName: "Portlay",
              imageSrc:
                  "https://img.freepik.com/premium-vector/vector-circle-youtube-logo-collection-with-flat-design_534308-21669.jpg?semt=ais_hybrid&w=740",
              postingTime: "",
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateTweet()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
