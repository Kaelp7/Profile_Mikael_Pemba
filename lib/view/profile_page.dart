import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../theme.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/newbg.jpg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage('assets/profileimg.jpg'),
                
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Mikael Pemba',
                style: titleTextStyle.copyWith(
                    letterSpacing: 2,
                    color: Colors.lightBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Member of Div. Mobile Dev',
                style: titleTextStyle.copyWith(
                    color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Mahasiswa Teknik Informatika UNSRAT yang suka mencoba membuat aplikasi',
                style:TextStyle(color: Colors.black),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/github.png'), // Ganti dengan asset ikon GitHub Anda
                    onPressed: () {
                      _launchURL('https://github.com/Kaelp7'); // Ganti dengan URL GitHub Anda
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/linkedin.png'), // Ganti dengan asset ikon LinkedIn Anda
                    onPressed: () {
                      _launchURL('https://www.linkedin.com/in/mikael-pemba-920853272'); // Ganti dengan URL LinkedIn Anda
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/instagram.png'), // Ganti dengan asset ikon Instagram Anda
                    onPressed: () {
                      _launchURL('https://www.instagram.com/kael_p_'); // Ganti dengan URL Instagram Anda
                    },
                  ),
                ],
              ),
            ]
          ),
        )
      ],
    );
  }
}

// Fungsi untuk membuka tautan
void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

final TextStyle titleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 16,
);