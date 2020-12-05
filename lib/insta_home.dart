import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_body.dart';

class InstaHome extends StatelessWidget {
  final topBar = new AppBar(
      backgroundColor: Color(0xfff8faf8),
      centerTitle: true,
      elevation: 1.0,
      leading: Icon(Icons.camera_alt),
      title: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: SizedBox(
          height: 95.0,
          child: Image.asset("assets/images/instagram.png"),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Icon(Icons.search),
        ),
        Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.send_sharp))
      ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.add_box),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.account_box),
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
