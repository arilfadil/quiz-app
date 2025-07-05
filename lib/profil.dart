import 'package:flutter/material.dart'; 
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget { // Gunakan nama yang lebih spesifik seperti ProfileScreen
  // Tambahkan parameter onGoBack untuk tombol Kembali
  const ProfileScreen({super.key, required this.onGoBack}); 

  final void Function() onGoBack; 

  // Fungsi pembantu untuk membuat kartu info profil
  Widget buildInfoCard(
    BuildContext context, {
    required IconData icon,
    required String label, 
    required String value, 
    required Size screenSize,
  }) {
    return Container(
      width: screenSize.width * 0.85, 
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15), 
      decoration: BoxDecoration( 
        color: const Color.fromARGB(255, 7, 82, 123), 
        borderRadius: BorderRadius.circular(15), 
        boxShadow: [ 
          BoxShadow( 
            color: Colors.black.withOpacity(0.2), 
            spreadRadius: 2,
            blurRadius: 5, 
            offset: const Offset(0, 3), 
          ), // BoxShadow
        ], // boxShadow
      ), // BoxDecoration
      child: Row( 
        children: [
          Icon(icon, color: Colors.white, size: 28), 
          const SizedBox(width: 15), 
          Expanded( 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text( 
                  label, 
                  style: const TextStyle( 
                    fontSize: 16, 
                    color: Colors.white70, 
                    fontWeight: FontWeight.w300,
                  ), // TextStyle
                ), // Text
                const SizedBox(height: 4), 
                Text( 
                  value, 
                  style: const TextStyle( 
                    fontSize: 18, 
                    color: Colors.white, 
                    fontWeight: FontWeight.w500, 
                  ), // TextStyle
                ), // Text
              ], // children
            ), // Column
          ), // Expanded
        ], // children
      ), // Row
    ); // Container
  }

  @override
  Widget build(BuildContext context) { 
    final Size screenSize = MediaQuery.of(context).size; 

    return Scaffold( 
      backgroundColor: Colors.blue.shade600, // Warna latar belakang biru
      body: Center( 
        child: SingleChildScrollView( 
          padding: const EdgeInsets.all(20.0), 
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              CircleAvatar(
                radius: screenSize.width * 0.15,
                backgroundColor: Colors.white,
                // Ganti NetworkImage ini dengan AssetImage
                backgroundImage: const AssetImage(
                  'assets/images/saya.jpg', 
                ),
              ),
              SizedBox(height: screenSize.height * 0.03), 

              const Text( 
                'Nama Mahasiswa', 
                style: TextStyle( 
                  fontSize: 18, 
                  color: Colors.white70, 
                  fontWeight: FontWeight.w300,
                ), // TextStyle
              ), // Text
              const Text(
                'Khairil Fadhillah', 
                style: TextStyle( 
                  fontSize: 26, 
                  color: Colors.white, 
                  fontWeight: FontWeight.bold, 
                ), // TextStyle
                textAlign: TextAlign.center, 
              ), // Text

              SizedBox(height: screenSize.height * 0.03),

              const Text( 
                'NPM', 
                style: TextStyle( 
                  fontSize: 18, 
                  color: Colors.white70, 
                  fontWeight: FontWeight.w300, 
                ), // TextStyle
              ), // Text
              const Text( 
                '2210010482', // Ganti dengan NPM Anda
                style: TextStyle( 
                  fontSize: 26, 
                  color: Colors.white, 
                  fontWeight: FontWeight.bold, 
                ), // TextStyle
                textAlign: TextAlign.center, 
              ), // Text

              SizedBox(height: screenSize.height * 0.04),

              // Info Cards
              buildInfoCard( 
                context,
                icon: Icons.email, 
                label: 'Email', 
                value: 'fadilaril602@gmail.com', 
                screenSize: screenSize, 
              ), // buildInfoCard
              SizedBox(height: screenSize.height * 0.015), 
              buildInfoCard( 
                context,
                icon: Icons.phone, 
                label: 'Telepon',
                value: '+62 895-6114-27171', 
                screenSize: screenSize, 
              ), // buildInfoCard
              SizedBox(height: screenSize.height * 0.015), 
              buildInfoCard( 
                context,
                icon: Icons.school, 
                label: 'Jurusan', 
                value: 'Teknik Informatika', 
                screenSize: screenSize, 
              ), // buildInfoCard
              SizedBox(height: screenSize.height * 0.015), 
              buildInfoCard( 
                context,
                icon: Icons.calendar_today, 
                label: 'Tanggal Lahir', 
                value: '26 Juni 2004', 
                screenSize: screenSize,
              ), // buildInfoCard

              SizedBox(height: screenSize.height * 0.03),

              TextButton(
                onPressed: onGoBack, 
                child: const Text( 
                  'Kembali',
                  style: TextStyle(color: Colors.white), 
                ), // Text
              ) // TextButton
            ], // children
          ), // Column
        ), 
      ), // Center
    ); // Scaffold
  }
}