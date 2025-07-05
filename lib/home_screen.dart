
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  // Tambahkan parameter profile
  const HomeScreen(this.startQuiz,
      {super.key, required this.profile});

  final void Function() startQuiz;
  final void Function()
      profile; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Gambar logo
              Image.asset(
                'assets/images/logo.png',
                width: 300,
                //color: const Color.fromARGB(150, 255, 255, 255),
              ),
              const SizedBox(height: 80),

              // Teks 'Quiz App' dan 'Praktikum Mobile Programming'
              Column(
                children: [
                  Text(
                    'Quiz App',
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 237, 223, 252),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Praktikum Mobile Programming',
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 237, 223, 252),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Tombol Start Quiz
              OutlinedButton.icon(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Start Quiz'),
              ),
              const SizedBox(height: 10), 
              TextButton(
                onPressed: profile, // Panggil fungsi profile 
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white, 
                  foregroundColor: Colors.deepPurple, 
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min, 
                  children: [
                    Icon(Icons.people_alt),
                    SizedBox(width: 8), 
                    Text('Profile') 
                  ],
                ), // Row
              ), // TextButton
            ],
          ),
        ),
      ),
    );
  }
}
