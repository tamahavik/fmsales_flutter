import 'package:flutter/material.dart';

class Form2Screen extends StatefulWidget {
  const Form2Screen({super.key});

  @override
  State<Form2Screen> createState() => _Form2ScreenState();
}

class _Form2ScreenState extends State<Form2Screen> {
  final int _form = 2;
  String? _noHpActiveResult;
  String? _alamatValidResult;
  String? _ketemuSiapaResult;
  final List<String> _noHpActiveDropdown = ["Ya", "Tidak"];
  final List<String> _alamatValidDropDown = ["Ya", "Tidak"];
  final List<String> _ketemuSiapaDropDown = ["Ya", "Tidak"];

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Follow Up'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Follow Up',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Text('Follow Up Result'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Follow Up Result',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Text('Date Visit'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Date Visit',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Apahkah No HP Aktif?'),
              DropdownButton(
                isExpanded: true,
                hint: Text('- Silahkan Pilih -'),
                value: _noHpActiveResult,
                items: _noHpActiveDropdown.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (value) => {
                  setState(() {
                    _noHpActiveResult = value;
                  })
                },
                icon: const Icon(Icons.keyboard_arrow_down),
              ),
              SizedBox(
                height: 20,
              ),
              const Text('No HP Kostumer yang aktif saat ini'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'No HP Kostumer yang aktif saat ini',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Alamat Valid?'),
              DropdownButton(
                isExpanded: true,
                hint: Text('- Silahkan Pilih -'),
                value: _alamatValidResult,
                items: _alamatValidDropDown.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (value) => {
                  setState(() {
                    _alamatValidResult = value;
                  })
                },
                icon: const Icon(Icons.keyboard_arrow_down),
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
              Text('Potensi Ketertarikan'),
              DropdownButton(
                isExpanded: true,
                hint: Text('- Silahkan Pilih -'),
                value: _alamatValidResult,
                items: _alamatValidDropDown.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (value) => {
                  setState(() {
                    _alamatValidResult = value;
                  })
                },
                icon: const Icon(Icons.keyboard_arrow_down),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Ketemu Siapa'),
              DropdownButton(
                isExpanded: true,
                hint: Text('- Silahkan Pilih -'),
                value: _ketemuSiapaResult,
                items: _ketemuSiapaDropDown.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (value) => {
                  setState(() {
                    _ketemuSiapaResult = value;
                  })
                },
                icon: const Icon(Icons.keyboard_arrow_down),
              ),
              SizedBox(
                height: 20,
              ),
              const Text('Tahun Motor'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Tahun Motor',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Text('Merk Motor'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Merk Motor',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Text('Tipe Motor'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Tipe Motor',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Text('Keterangan'),
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  hintText: 'Keterangan',
                  hintStyle: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 400,
                padding: EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.amber,
                        width: 2,
                        style: BorderStyle.solid),
                    top: BorderSide(
                        color: Colors.amber,
                        width: 2,
                        style: BorderStyle.solid),
                    left: BorderSide(
                        color: Colors.amber,
                        width: 2,
                        style: BorderStyle.solid),
                    right: BorderSide(
                        color: Colors.amber,
                        width: 2,
                        style: BorderStyle.solid),
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    size: 300,
                    color: Colors.amber,
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
