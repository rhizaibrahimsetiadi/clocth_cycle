import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static String routeName = "/AboutPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Team Pengembang:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            DeveloperCard(
              name: 'Rhiza Ibrahim Setiadi',
              role: 'Desain dan perancang aplikasi',
            ),
            DeveloperCard(
              name: 'Albertus Magnus Foresta Noventona ',
              role: 'Desain Aplikasi',
            ),
            DeveloperCard(
              name: 'Asep Erik Nugraha ',
              role: 'Penyusun Laporan',
            ),
            DeveloperCard(
              name: 'Parid Hadiansyah ',
              role: 'Penyusun Laporan',
            ),
            // Tambahkan card untuk setiap anggota tim pengembang
          ],
        ),
      ),
    );
  }
}

class DeveloperCard extends StatelessWidget {
  final String name;
  final String role;

  DeveloperCard({required this.name, required this.role});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(name),
        subtitle: Text(role),
      ),
    );
  }
}
