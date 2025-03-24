import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFFE3F2FD),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> friends = [
    {'name': 'Abdul Fuad Nurdiansah', 'icon': Icons.person},
    {'name': 'Adi Tegar Setiawan', 'icon': Icons.person},
    {'name': 'Aji Kia Ramadhani', 'icon': Icons.person},
    {'name': 'Alfi Fadli', 'icon': Icons.person},
    {'name': 'Alif Akbar Andriyansyah', 'icon': Icons.person},
    {'name': 'Amanda Aditama Nurani', 'icon': Icons.person},
    {'name': 'Andri Khoirul Manaf', 'icon': Icons.person},
    {'name': 'Arcco Putra Azhariansyah', 'icon': Icons.person},
    {'name': 'Atik Setyaningsih', 'icon': Icons.person},
    {'name': 'Bayu Susilo Aji Nugroho', 'icon': Icons.person},
    {'name': 'Claudea Cahaya Cinta', 'icon': Icons.person},
    {'name': 'Devan Vidhel Azadan', 'icon': Icons.person},
    {'name': 'Dina Asritama Wulandari', 'icon': Icons.person},
    {'name': 'Dyah Purwaningsih', 'icon': Icons.person},
    {'name': 'Elsa Oktawiyani', 'icon': Icons.person},
    {'name': 'Faizal Wiyatnodito', 'icon': Icons.person},
    {'name': 'Febrian Maulana', 'icon': Icons.person},
    {'name': 'Garin Dani Saputra', 'icon': Icons.person},
    {'name': 'Haffiant Resditya Akbar', 'icon': Icons.person},
    {'name': 'Ilham Khoiri', 'icon': Icons.person},
    {'name': 'Jenniva Retno Nuryuansyah', 'icon': Icons.person},
    {'name': 'Maheswara Hani Rapidya Kusuma', 'icon': Icons.person},
    {'name': 'Muchammad Syarif Hidayatullah', 'icon': Icons.person},
    {'name': 'Muhammad Amir Nurudin', 'icon': Icons.person},
    {'name': 'Muhammad Noviyanto', 'icon': Icons.person},
    {'name': 'Muhammad Zulfa Zaidan Nafi', 'icon': Icons.person},
    {'name': 'Nabilah Junita Eka Putri', 'icon': Icons.person},
    {'name': 'Nur Rahman Saleh', 'icon': Icons.person},
    {'name': 'Rafael Theo Santoso', 'icon': Icons.person},
    {'name': 'Raply Fediansyah', 'icon': Icons.person},
    {'name': 'Rizal Diaz Reihan Saputra', 'icon': Icons.person},
    {'name': 'Satria Abdul Rofiq', 'icon': Icons.person},
    {'name': 'Sultan Syah Afriyadi', 'icon': Icons.person},
    {'name': 'Valen Purwaixna Saputa', 'icon': Icons.person},
    {'name': 'Vhereyga Putra Perdana', 'icon': Icons.person},
    {'name': 'Waras Tri Wijaya', 'icon': Icons.person},
    {'name': 'Yola Aulia Wanergi', 'icon': Icons.person},
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Daftar Mahasiswa TI 23 A2',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: friends.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                leading: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Icon(
                    friends[index]['icon'],
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  friends[index]['name'],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Anda memilih ${friends[index]['name']}'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
