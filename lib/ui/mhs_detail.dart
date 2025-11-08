import 'package:flutter/material.dart';

class MhsDetail extends StatelessWidget {
  final String nama;
  final String nim;
  final String tanggal;
  const MhsDetail({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tanggal}) 
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perkenalan'),
        titleTextStyle: TextStyle(color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Text('Nama saya $nama degan NIM $nim. saya lahir di tahun $tanggal'),
      ),
    );
  }
}