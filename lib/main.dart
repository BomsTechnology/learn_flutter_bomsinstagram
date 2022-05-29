import 'package:flutter/material.dart';
import 'package:boms_instagram/story_widget.dart';
import 'package:boms_instagram/post_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instagram',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: Image.asset(
            'assets/images/instagram-logo.png',
            height: 60,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.send_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [StoryWidget(), PostWidget()],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.shade700,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_outlined), label: 'Add Photo'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Profil'),
          ],
        ),
      ),
    );
  }
}
