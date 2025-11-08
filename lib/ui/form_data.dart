import 'package:flutter/material.dart';
import 'package:h1d023091_tugas6/ui/mhs_detail.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);
  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Data'),
        titleTextStyle: TextStyle(
          color: Colors.white
          // fontWeight:
          ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text('Nama'),
            TextFormField(
              controller: _namaController,
              decoration: InputDecoration(hintText: 'masukkan nama anda'),
            ),
            SizedBox(height: 15),
            Text('NIM'),
            TextFormField(
              controller: _nimController,
              decoration: InputDecoration(hintText: 'masukkan NIM anda'),
            ),
            SizedBox(height: 15),
            Text('Tahun Lahir'),
            TextFormField(
              controller: _tahunController,
              decoration: InputDecoration(hintText: 'masukkan tahun lahir anda'),
            ),
            SizedBox(height: 15),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  String nama = _namaController.text;
                  String nim = _nimController.text;
                  String tahun = _tahunController.text;
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MhsDetail(
                      nama: nama, 
                      nim: nim, 
                      tanggal: tahun)));
                }, 
                child: Text('Simpan'),
              ),
            )
          ],
        ),
      ),
    );
  }    
}