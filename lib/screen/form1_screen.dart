import 'package:flutter/material.dart';
import 'package:ufi/enums/gender_enum.dart';

class Form1Screen extends StatefulWidget {
  const Form1Screen({super.key});

  @override
  State<Form1Screen> createState() => _Form1ScreenState();
}

class _Form1ScreenState extends State<Form1Screen> {
  final int _form = 1;
  String? _gender;
  String? _followUpValue;
  String? _followUpResultValue;
  String? _bu = 'UFI';
  final List<String> _followUpBy = ["Telepon", "Visit"];
  final List<String> _followUpResult = [
    "Tertarik",
    "Tidak Tertarik",
    "Peluang"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form $_form/7'),
        backgroundColor: Colors.blue[600],
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Customer No (Main)'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Customer No (Main)',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Text('Nama Kostumer'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Nama Kostumer',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Nomor HP 1'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Nomor HP 1',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Nomor HP 2'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Nomor HP 1',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Alamat'),
              TextFormField(
                maxLines: null,
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
              Text('Status FGC'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Status FGC',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Plafond FGC'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Plafond FGC',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Gender'),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 30,
                    child: RadioListTile(
                      title: Text(GenderEnum.male.value),
                      value: GenderEnum.male.value,
                      groupValue: _gender,
                      onChanged: (value) => {
                        setState(() {
                          _gender = value;
                        })
                      },
                    ),
                  ),
                  Container(
                    width: 150,
                    child: RadioListTile(
                      title: Text(GenderEnum.female.value),
                      value: GenderEnum.female.value,
                      groupValue: _gender,
                      onChanged: (value) => {
                        setState(() {
                          _gender = value;
                        })
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('Follow Up'),
              DropdownButton(
                isExpanded: true,
                hint: Text('- Silahkan Pilih -'),
                value: _followUpValue,
                items: _followUpBy.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (value) => {
                  setState(() {
                    _followUpValue = value;
                  })
                },
                icon: const Icon(Icons.keyboard_arrow_down),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Follow Up Result'),
              DropdownButton(
                isExpanded: true,
                hint: Text('- Silahkan Pilih -'),
                value: _followUpResultValue,
                items: _followUpResult.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (value) => {
                  setState(() {
                    _followUpResultValue = value;
                  })
                },
                icon: const Icon(Icons.keyboard_arrow_down),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Tempat Lahir'),
              TextFormField(
                maxLines: null,
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Tempat Lahir',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Tanggal Lahir'),
              TextFormField(
                maxLines: null,
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Tanggal Lahir',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Tanggal Visit'),
              TextFormField(
                maxLines: null,
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Tanggal Visit',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('No KTP'),
              TextFormField(
                maxLines: null,
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'No KTP',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Product Required (BU yang diinginkan)'),
              DropdownButton(
                isExpanded: true,
                hint: Text('- Silahkan Pilih -'),
                value: _bu,
                items: [
                  DropdownMenuItem(
                    value: _bu,
                    child: Text(_bu ?? ''),
                  ),
                ],
                onChanged: (value) => {
                  setState(() {
                    _bu = value;
                  })
                },
                icon: const Icon(Icons.keyboard_arrow_down),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Remark'),
              TextFormField(
                maxLines: null,
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Remark',
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
