import 'package:flutter/material.dart';
import 'story_page.dart';

class RomancePage extends StatelessWidget {
  const RomancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cerita Romansa")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildStoryBox(
                context,
                label: "Cinta di Tengah Rimba",
                content: "Di sebuah desa terpencil, seorang pemuda bernama Andi jatuh cinta pada seorang gadis desa bernama Ayu. Mereka sering bertemu di hutan saat Ayu mencari kayu bakar. Namun, cinta mereka diuji oleh perbedaan status sosial. Ayu ternyata adalah putri seorang kepala desa yang keras kepala. Dengan keberanian dan ketulusan, Andi berjuang mendapatkan restu kepala desa dan akhirnya, cinta mereka bersatu.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context,
                label: "Bunga Teratai Cinta",
                content: "Di sebuah danau magis, hiduplah seorang peri teratai bernama Lila. Setiap malam, Lila keluar dari teratai dan menyanyikan lagu-lagu indah. Suatu hari, seorang pemuda bernama Arjuna mendengar nyanyiannya dan jatuh cinta. Mereka bertemu setiap malam dan merajut cinta. Namun, cinta mereka terancam oleh kutukan yang mengikat Lila di danau. Arjuna harus menemukan cara untuk menghilangkan kutukan itu agar mereka bisa hidup bersama selamanya.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context,
                label: "Kasih Abadi di Gunung Merapi",
                content: "Di lereng Gunung Merapi, hiduplah seorang gadis bernama Sari yang memiliki kemampuan memanggil hujan. Suatu hari, seorang penjelajah bernama Rama tersesat dan diselamatkan oleh Sari. Keduanya jatuh cinta, tetapi kisah cinta mereka diwarnai dengan tantangan alam dan mitos setempat. Melalui perjuangan bersama, mereka membuktikan bahwa cinta sejati mampu menaklukkan segala rintangan.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context,
                label: "Legenda Cinta Putri Laut",
                content: "Putri Laut, Nirmala, jatuh cinta pada seorang nelayan bernama Bima yang sering bernyanyi di tepi pantai. Meskipun mereka berasal dari dua dunia yang berbeda, Nirmala bertekad untuk bersama Bima. Dengan bantuan sihirnya, ia berubah menjadi manusia setiap malam. Namun, cinta mereka harus melawan kutukan dari Raja Laut yang mengancam mereka. Cinta mereka diuji dan akhirnya, Nirmala harus memilih antara cinta sejati atau kembali ke lautan.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context,
                label: "Cinta di Balik Kabut",
                content: "Di sebuah desa yang selalu diselimuti kabut, hiduplah seorang gadis bernama Kirana yang memiliki kemampuan melihat masa depan. Suatu hari, ia bertemu dengan seorang pemuda misterius bernama Arya yang tampaknya tidak pernah menua. Kirana jatuh cinta pada Arya, tetapi ia harus mengungkap misteri siapa Arya sebenarnya dan mengapa ia ada di desanya. Cinta mereka berkembang meskipun diliputi rahasia dan bahaya.",
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
