import 'package:flutter/material.dart';
import 'story_page.dart';

class HorrorPage extends StatelessWidget {
  const HorrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cerita Horor")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildStoryBox(
                context,
                label: "Hantu Penunggu Sungai",
                content: "Di sebuah desa terpencil, ada sebuah sungai yang konon dihuni oleh hantu penunggu. Malam itu, seorang pemuda bernama Damar nekat pergi memancing di sungai tersebut meskipun telah diperingatkan oleh warga desa. Saat tengah malam, Damar mendengar suara tangisan seorang wanita. Tiba-tiba, sosok wanita berambut panjang dengan wajah pucat muncul di hadapannya. Hantu itu mengutuk Damar karena telah mengganggu kedamaiannya, dan sejak saat itu, Damar sering ditemukan termenung di tepi sungai, berbicara sendiri, dengan tatapan kosong dan penuh ketakutan.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context,
                label: "Kuntilanak di Pohon Beringin",
                content: "Di pinggiran desa, terdapat pohon beringin besar yang dikatakan angker. Setiap malam Jumat Kliwon, warga sering mendengar suara tawa menyeramkan dari arah pohon tersebut. Suatu malam, seorang pemuda bernama Budi yang terkenal berani, memutuskan untuk membuktikan bahwa cerita tersebut hanya mitos. Saat mendekati pohon, ia melihat sosok wanita berpakaian putih melayang di atas tanah dengan rambut panjang menutupi wajahnya. Wanita itu tiba-tiba mendekati Budi dengan cepat, membuatnya berteriak ketakutan. Keesokan harinya, Budi ditemukan pingsan di bawah pohon beringin, dan sejak itu, ia tidak pernah berani keluar rumah setelah matahari terbenam.",
              ),
              const SizedBox(height: 20), 
              _buildStoryBox(
                context,
                label: "Pocong Penunggu Kuburan",
                content: "Di sebuah desa kecil, kuburan lama yang jarang dikunjungi selalu mengeluarkan bau busuk. Konon, ada pocong yang sering muncul di malam hari, menakuti siapa saja yang berani mendekat. Suatu malam, seorang pria bernama Sarman yang tidak percaya dengan cerita itu, menantang temannya untuk menginap di kuburan tersebut. Tengah malam, ia merasakan bau busuk yang semakin kuat dan melihat pocong melompat-lompat mendekatinya. Dengan hati yang berdebar, Sarman mencoba melarikan diri, tetapi kakinya seperti terpaku di tanah. Pocong itu berhenti di depannya dan dengan suara serak berkata, 'Pergilah, jangan ganggu ketenanganku.' Keesokan harinya, Sarman ditemukan pingsan dengan mata terbuka lebar dan sejak saat itu, ia tidak pernah lagi menantang hal-hal gaib.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context,
                label: "Legenda Tuyul Pencuri",
                content: "Di sebuah desa, sering terjadi kehilangan uang secara misterius. Warga desa percaya bahwa tuyul, makhluk kecil berkepala botak, adalah pelakunya. Seorang pria bernama Jaka memutuskan untuk menangkap tuyul tersebut. Ia memasang jebakan dengan menyebarkan uang receh di dalam rumahnya. Tengah malam, Jaka mendengar suara berisik dan melihat sosok kecil berlari cepat mengambil uang. Dengan cepat, Jaka mengejar dan berhasil menangkap tuyul itu. Tuyul tersebut meronta dan mengeluarkan suara aneh sebelum menghilang dalam asap hitam. Setelah kejadian itu, uang yang hilang kembali dengan sendirinya, tetapi Jaka selalu merasa ada yang mengawasinya dari sudut-sudut gelap rumahnya.",
              ),
              const SizedBox(height: 20),
              _buildStoryBox(
                context,
                label: "Kisah Rumah Tua Angker",
                content: "Di ujung desa, terdapat sebuah rumah tua yang sudah lama ditinggalkan. Warga desa mengatakan rumah itu dihuni oleh arwah penasaran yang pernah dibunuh secara sadis di dalam rumah tersebut. Seorang peneliti bernama Rina memutuskan untuk menyelidiki kebenaran cerita tersebut. Malam pertama ia menginap di rumah itu, Rina mendengar suara langkah kaki dan pintu yang terbuka sendiri. Saat melihat ke cermin, ia melihat bayangan seorang wanita dengan wajah berlumuran darah. Wanita itu mendekat dan berbisik, 'Keluar dari rumah ini sebelum terlambat.' Rina segera keluar dari rumah itu dan melaporkan pengalamannya kepada warga desa. Sejak itu, tidak ada lagi yang berani mendekati rumah tua tersebut, dan rumah itu dibiarkan terbengkalai hingga ditelan waktu.",
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
