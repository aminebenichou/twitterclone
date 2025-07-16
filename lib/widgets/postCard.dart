import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twitterclone/screens/profile_screnn.dart';

class PostCard extends StatefulWidget {
  final content;
  final likes;
  final comments;
  final username;
  final accountName;
  final postingTime;
  final imageSrc;

  const PostCard(
      {super.key,
      this.content,
      this.likes,
      this.comments,
      this.username,
      this.accountName,
      this.postingTime,
      this.imageSrc});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _isLiked = false;
  bool _reposted = false;
  bool _bookmarked = false;

  @override
  Widget build(BuildContext context) {
    var likeColor = Colors.white;

    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color.fromARGB(255, 202, 202, 202)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(widget.imageSrc, width: 35),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileScreen()),
                                );
                              },
                              child: Text(
                                widget.accountName,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(widget.username),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(widget.postingTime),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.more_vert))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.content,
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.comment_rounded)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _reposted = !_reposted;
                            });
                          },
                          icon: _reposted
                              ? Icon(
                                  Icons.repeat,
                                  color: Colors.green,
                                )
                              : Icon(Icons.repeat_outlined)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _isLiked = !_isLiked;
                            });
                          },
                          icon: _isLiked
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : Icon(Icons.favorite_outline)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.analytics_outlined)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _bookmarked = !_bookmarked;
                            });
                          },
                          icon: _bookmarked
                              ? Icon(
                                  Icons.bookmark,
                                  color: Colors.yellow,
                                )
                              : Icon(Icons.bookmark_outline)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
