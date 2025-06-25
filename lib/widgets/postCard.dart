import 'package:flutter/material.dart';
import 'package:twitterclone/constants.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key});

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
            Image.asset("Vector.png", width: 35),
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
                            Text(
                              "Portaly",
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("@portalyapp"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("17h"),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.more_vert))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
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
                          icon: _reposted ? Icon(Icons.repeat, color: Colors.green,) : Icon(Icons.repeat_outlined)
                          ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _isLiked = !_isLiked;
                            });
                          },
                          icon: _isLiked ? Icon(Icons.favorite, color: Colors.red,) : Icon(Icons.favorite_outline)
                          ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.analytics_outlined)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _bookmarked = !_bookmarked;
                            });
                          },
                          icon: _bookmarked ? Icon(Icons.bookmark, color: Colors.yellow,) : Icon(Icons.bookmark_outline)
                          ),
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
