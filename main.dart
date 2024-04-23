import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'UTS Flutter Mobile Lanjutan';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 107, 166, 178),
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'image/ajeng.jpg',
                  height: 180,
                ),
                SizedBox(height: 16),
                Table(
                  columnWidths: const {
                    0: FlexColumnWidth(0.8), // Untuk label
                    1: FlexColumnWidth(0.2), // Untuk nilai
                    2: FlexColumnWidth(2), // Untuk titik dua
                  },
                  children: const [
                    TableRow(
                      children: [
                        Text(
                          'Nama',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          ':',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Ajeng Dwi Febriana',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          'Tanggal Lahir',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          ':',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Purwokerto, 1 Februari 2001',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          'Alamat',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          ':',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Purwosari, rt 6 rw 2, Kec.Baturaden, Kab.Banyumas, Purwokerto',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  color: Colors.black,
                  thickness: 4,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Tentang Saya',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Saya lahir Di Kota Purwokerto. Pendidkan terakhir SMK N 1 Purwokerto, pernah magang di Stasiun PT Tugu Televisi Yogyakarta. Sekarang mengikuti perkuliahan di STMIK Widya Utama jurusan Teknik Informatika.',
                  style: TextStyle(fontSize: 18),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 4,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    SvgPicture.asset('image/ic_whatsapp.svg',
                        width: 40, semanticsLabel: 'Whatsapp Logo'),
                    SizedBox(
                      width: 6,
                    ),
                    Text('+6288232206272', style: TextStyle(fontSize: 16)),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset('image/ic_instagram.svg',
                        semanticsLabel: 'Instagram Logo'),
                    SizedBox(
                      width: 6,
                    ),
                    Text('cadburvy', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
