# Tugas 6 Pertemuan 8
Ammar Yassin<br>
H1D023091<br>
Shift F => A<br>

## Penjelasan Program
input pengguna akan disimpan menggunakan controller 
```
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();
```
yang pada setiap input akan dimasukkan controllernya masing-masing
```
SizedBox(height: 15),
            Text('Tahun Lahir'),
            TextFormField(
              controller: _tahunController,
              decoration: InputDecoration(hintText: 'masukkan tahun lahir anda'),
            ),
```
lalu akan mengirim data ke halaman detail pada tombol simpan, menggunaka navigator dan juga MaterialPageRoute
```
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
```
selanjutkan data akan ditangkap di halaman detail dengan parameter
```
  final String nama;
  final String nim;
  final String tanggal;
  const MhsDetail({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tanggal}) 
    : super(key: key);
```
terakhir dipanggil di dalam text
```
Text('Nama saya $nama degan NIM $nim. saya lahir di tahun $tanggal'),
```

<img width="309" height="678" alt="image" src="https://github.com/user-attachments/assets/065dca9d-1c60-461f-bb66-c6a8080e1998" />
<img width="312" height="675" alt="image" src="https://github.com/user-attachments/assets/ae57093b-5e15-499b-93d1-112570c50890" />


