import 'package:flutter/material.dart';
import 'story_page.dart';

class ComedyPage extends StatelessWidget {
  const ComedyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cerita Komedi")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildStoryBox(
                context,
                label: "Si Pitung dan Pusaka Kocak",
                content: "Di Betawi, Si Pitung terkenal sebagai pahlawan rakyat. Namun, ia juga dikenal karena tingkah lucunya. Suatu hari, ia menemukan pusaka kuno yang diyakini bisa memberikan kekuatan luar biasa. Sayangnya, pusaka itu malah membuat Pitung mengalami serangkaian kejadian lucu yang membuat seluruh kampung terpingkal-pingkal. Akhirnya, Pitung menyadari bahwa kekuatan sejati ada dalam dirinya sendiri, bukan pada pusaka.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context,
                label: "Maling Kundang yang Sial",
                content: "Maling Kundang adalah seorang pencuri ulung yang selalu berhasil lolos. Namun, suatu hari ia mencuri sebuah tas dari seorang nenek tua yang ternyata adalah penyihir. Nenek itu mengutuknya sehingga setiap kali ia mencoba mencuri, ia akan mengalami kejadian memalukan. Dengan berbagai trik lucu dan kejadian konyol, Kundang belajar bahwa kejujuran adalah jalan terbaik.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context,
                label: "Si Kancil dan Sepatu Emas",
                content: "Si Kancil terkenal cerdik dan suka mengerjai teman-temannya. Suatu hari, ia menemukan sepasang sepatu emas yang bisa membuatnya berlari sangat cepat. Dengan sepatu itu, ia memutuskan untuk berpartisipasi dalam perlombaan desa. Namun, sepatu emas itu ternyata memiliki pikiran sendiri dan membuat Kancil terjebak dalam situasi-situasi kocak yang membuat semua orang tertawa.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context,
                label: "Pak Lebai dan Kambing Ajaib",
                content: "Pak Lebai terkenal sebagai orang yang serakah di desanya. Suatu hari, ia menemukan kambing yang bisa mengeluarkan emas. Ia sangat senang, tetapi kambing itu hanya mau mengeluarkan emas jika diberi makanan tertentu. Dengan serangkaian percobaan lucu, Pak Lebai belajar bahwa keserakahan tidak akan membawa kebahagiaan sejati.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context,
                label: "Si Juki dan Batu Ajaib",
                content: "Juki adalah pemuda desa yang selalu ingin cepat kaya tanpa usaha. Suatu hari, ia menemukan batu ajaib yang katanya bisa mengabulkan permintaan. Namun, setiap permintaan Juki malah membawa masalah yang konyol. Dengan banyak kejadian lucu, Juki akhirnya menyadari bahwa tidak ada jalan pintas untuk meraih kesuksesan.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStoryBox(BuildContext context, {required String label, required String content}) {
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
