import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/insta_story.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: InstaStory(),
              height: _deviceSize.height * 0.15,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png"),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Text("yashrajjain726"),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1593642532744-d377ab507dc8?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(FontAwesomeIcons.heart),
                          SizedBox(width: 16.0),
                          Icon(FontAwesomeIcons.comment),
                          SizedBox(height: 16.0),
                          Icon(FontAwesomeIcons.paperPlane),
                          SizedBox(height: 16.0),
                        ],
                      ),
                      Icon(FontAwesomeIcons.bookmark),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child:
                      Text("Liked by gyaan72,rajeshbuhj7 and 72,168 others "),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png"),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a Comment"),
                      ))
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
