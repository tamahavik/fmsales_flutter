import 'package:flutter/material.dart';

class Form5Screen extends StatefulWidget {
  const Form5Screen({super.key});

  @override
  State<Form5Screen> createState() => _Form5ScreenState();
}

class _Form5ScreenState extends State<Form5Screen> {
  final int _form = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form $_form/7'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.save),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                        'Silahkan isi informasi berikut sesuai dengan alamat survey, tekan tombol copy untuk menggunakan data sebelumnya'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('tap copy');
                        },
                        child: Icon(Icons.copy),
                      ),
                      Text(
                        'copy',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text('Alamat'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Alamat',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('RT/RW'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'RT/RW',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Provinsi'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Provinsi',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Kabupaten/Kota'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Kabupaten/Kota',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Kecamatan'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Kecamatan',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Kelurahan'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Kelurahan',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('ZipCode'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Provinsi',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
