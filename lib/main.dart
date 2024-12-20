import 'package:flutter/material.dart';
import 'package:warga_app/database/database_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Tambahkan data warga saat aplikasi mulai
  final dbHelper = DatabaseHelper.instance;
  await dbHelper.addWarga({
    'nama': 'Ahmad Fadly',
    'nik': '1234567890123456',
    'no_kk': '1234567890123456',
    'alamat': 'Jl. Merdeka No. 1',
    'tanggal_lahir': '1990-01-01',
    'jenis_kelamin': 'L',
    'no_hp': '081234567890',
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warga App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Warga App'),
        ),
        body: Center(
          child: Text('Data Warga Ditambahkan'),
        ),
      ),
    );
  }
}
