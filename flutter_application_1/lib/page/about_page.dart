import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "About",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/revan.jpg"),
              ),
              const SizedBox(height: 20),
              const Text(
                "Nama: Revanza Hadi Putra",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              const Text(
                "NIM: 1152200029",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              const Text(
                "Deskripsi: Aplikasi ini dibuat untuk menyediakan cerita rakyat dari berbagai genre, Selamat menikmati!",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
