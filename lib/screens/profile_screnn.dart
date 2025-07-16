import 'package:flutter/material.dart';
import 'package:twitterclone/widgets/postCard.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "Vector.png",
                  width: 50,
                ),
                IconButton(
                  onPressed: () {

                }, icon: Icon(Icons.more_vert)),

              ],
            ),

          ),
          PostCard(
            content: '',
            username: '@portaly',
            postingTime: '17h',
            accountName: 'Portaly',
            imageSrc: 'Vector.png',
          )
        ],
      ),
    );
  }
}
