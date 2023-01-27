import 'package:flutter/material.dart';

class From7Screen extends StatefulWidget {
  const From7Screen({super.key});

  @override
  State<From7Screen> createState() => _From7ScreenState();
}

class _From7ScreenState extends State<From7Screen> {
  final int _form = 7;
  List<String> _keperluanPinjamanDropDown = [
    "keperluan 1",
    "keperluan 2",
    "keperluan 3",
    "keperluan 4"
  ];
  String? _keperluanPinjamanResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form $_form/7'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.save),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Keperluan Pinjaman'),
              DropdownButton(
                isExpanded: true,
                hint: Text('- Silahkan Pilih -'),
                value: _keperluanPinjamanResult,
                items: _keperluanPinjamanDropDown.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (value) => {
                  setState(() {
                    _keperluanPinjamanResult = value;
                  })
                },
                icon: const Icon(Icons.keyboard_arrow_down),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Kategori Objek'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Kategori Objek',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Model'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Model',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('TOP (dalam hitungan bulan)'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'TOP (dalam hitungan bulan)',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Remarks'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Remarks',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
