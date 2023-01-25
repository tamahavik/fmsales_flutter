import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ufi/enums/verifikasi_enum.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final List<String> _entryChooser = [
    VerifikasiEnum.ktp.value,
    VerifikasiEnum.nameAndPhone.value,
    VerifikasiEnum.newCustomer.value
  ];

  String? _value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: const Text('Verifikasi Konsumen'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Cari Konsumen Berdasarkan'),
                DropdownButton(
                  isExpanded: true,
                  hint: Text('Open to choose'),
                  value: _value,
                  items: _entryChooser.map((e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    );
                  }).toList(),
                  onChanged: (value) => {
                    setState(() {
                      _value = value;
                    })
                  },
                  icon: const Icon(Icons.keyboard_arrow_down),
                ),
                SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: _value == VerifikasiEnum.ktp.value,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nomor KTP'),
                      TextFormField(
                        maxLength: 16,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          hintText: 'Nomor KTP',
                          hintStyle: TextStyle(
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: _value == VerifikasiEnum.nameAndPhone.value,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nama'),
                      TextFormField(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          hintText: 'Nama',
                          hintStyle: TextStyle(
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Nomor Telepone'),
                      TextFormField(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          focusColor: Colors.black,
                          fillColor: Colors.black,
                          hintText: 'Nomor Telepone',
                          hintStyle: TextStyle(
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Visibility(
              visible: _value != null,
              child: Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[600],
                  ),
                  child: Text('Cari Konsumen'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
