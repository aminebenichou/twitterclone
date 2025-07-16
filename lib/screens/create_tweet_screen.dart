import 'package:flutter/material.dart';

class CreateTweet extends StatefulWidget {
  const CreateTweet({super.key});

  @override
  State<CreateTweet> createState() => _CreateTweetState();
}

class _CreateTweetState extends State<CreateTweet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Add tweet"),),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "What's on your mind?"
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.public),
                        Text('Everyone can reply')
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.image_outlined)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.gif_box_outlined)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.list_rounded)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.pin_drop_outlined)),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.create),),
      
      )
    );
  }
}