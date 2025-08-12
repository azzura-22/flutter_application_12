import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Profil Warga'),
      centerTitle: true,
      ),
      body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        CircleAvatar(
          radius: 48,
          backgroundColor: Colors.blue[200],
          child: Icon(Icons.person, size: 48, color: Colors.white),
        ),
        SizedBox(height: 16),
        Text(
          'Nama Warga',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'emailwarga@email.com',
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
        SizedBox(height: 24),
        Card(
          elevation: 2,
          margin: EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
          leading: Icon(Icons.home),
          title: Text('Alamat'),
          subtitle: Text('Jl. Contoh No. 123, RT 01 RW 02'),
          ),
        ),
        Card(
          elevation: 2,
          margin: EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text('Status Iuran'),
          subtitle: Text('Lunas bulan Juni 2024'),
          trailing: Icon(Icons.check_circle, color: Colors.green),
          ),
        ),
        Card(
          elevation: 2,
          margin: EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
          leading: Icon(Icons.phone),
          title: Text('No. Telepon'),
          subtitle: Text('0812-3456-7890'),
          ),
        ),
        ],
      ),
      ),
    );
  }
}