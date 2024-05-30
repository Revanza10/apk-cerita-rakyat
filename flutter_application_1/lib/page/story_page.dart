import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  final String title;
  final String content;

  const StoryPage({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        physics: BouncingScrollPhysics(), // Tambahkan physics untuk membuatnya dapat di-scroll
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              content,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
