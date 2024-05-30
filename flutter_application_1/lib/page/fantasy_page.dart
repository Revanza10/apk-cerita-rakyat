import 'package:flutter/material.dart';
import 'story_page.dart';

class FantasyPage extends StatelessWidget {
  const FantasyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cerita Fantasi")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildStoryBox(
                context, // Menambahkan context di sini
                label: "Naga dan Pahlawan",
                content: "Di sebuah kerajaan kuno, naga jahat bernama Draigo sering menyerang desa-desa. Seorang pahlawan muda bernama Arya memutuskan untuk melawan Draigo. Dengan bantuan pedang ajaib dan teman-teman peri, Arya berjuang melawan Draigo dan melindungi kerajaannya. Namun, ia juga menemukan rahasia tentang asal-usul Draigo yang mengubah cara pandangnya.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context, // Menambahkan context di sini
                label: "Hutan Berbicara",
                content: "Di sebuah desa, hutan di dekatnya dikatakan bisa berbicara. Seorang gadis bernama Maya, yang memiliki kemampuan mendengar suara hutan, menemukan bahwa hutan itu dijaga oleh roh-roh kuno. Ketika desa dalam bahaya, Maya harus bekerja sama dengan roh-roh tersebut untuk menyelamatkan desanya dan menemukan rahasia tentang kekuatan dirinya sendiri.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context, // Menambahkan context di sini
                label: "Cincin Ajaib Sang Raja",
                content: "Seorang raja menemukan cincin ajaib yang memberinya kekuatan luar biasa. Namun, cincin itu juga membawa kutukan yang membuatnya menjadi semakin serakah. Seorang pemuda bernama Raka menemukan cara untuk menghentikan kutukan tersebut. Dengan bantuan makhluk-makhluk ajaib, Raka berjuang untuk mengembalikan kedamaian di kerajaannya.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context, // Menambahkan context di sini
                label: "Putri dan Phoenix",
                content: "Putri Asha menemukan telur phoenix di hutan terlarang. Ketika telur itu menetas, ia merawat phoenix tersebut yang memiliki kemampuan menyembuhkan. Namun, kekuatan phoenix menarik perhatian penyihir jahat. Asha harus melindungi phoenix sambil melawan sihir jahat dan menemukan kekuatan sejatinya.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context, // Menambahkan context di sini
                label: "Pahlawan dari Langit",
                content: "Di sebuah dunia di atas awan, seorang pahlawan bernama Lintang menemukan sebuah kota yang hilang. Kota itu dijaga oleh makhluk ajaib dan penuh dengan rahasia kuno. Lintang harus melindungi kota tersebut dari ancaman luar dan mengungkap misteri tentang asal-usulnya sendiri. Dengan bantuan teman-teman baru, ia melawan kejahatan dan membawa kedamaian.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStoryBox(BuildContext context, {required String label, required String content}) { // Menambahkan BuildContext context di sini
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StoryPage(
              title: label,
              content: content,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade300, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
