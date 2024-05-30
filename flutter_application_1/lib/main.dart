import 'package:flutter/material.dart';
import 'package:cerita_rakyat/page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(), 
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    _navigateToMainPage(); // Panggil fungsi navigasi ke halaman utama setelah 1 detik
  }

  // Fungsi untuk menavigasi ke halaman utama
  void _navigateToMainPage() async {
    await Future.delayed(const Duration(seconds: 3)); 
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/book_2.png', 
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'Selamat Datang! \n Nikmatilah kumpulan cerita rakyat ini',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
