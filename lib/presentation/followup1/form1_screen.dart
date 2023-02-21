import 'package:flutter/material.dart';
import 'package:ufi/components/costume_dropdown_form.dart';
import 'package:ufi/components/costume_form_field.dart';
import 'package:ufi/enums/gender_enum.dart';
import 'package:ufi/model/leads.dart';

class Form1Screen extends StatefulWidget {
  const Form1Screen({super.key, required Leads leads}) : _leads = leads;
  final Leads _leads;

  @override
  State<Form1Screen> createState() => _Form1ScreenState();
}

class _Form1ScreenState extends State<Form1Screen> {
  final int _form = 1;
  String? _gender;
  String? _followUpValue;
  String? _followUpResultValue;
  String? _buValue = 'UFI';
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
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CostumeFormField(
                hint: 'Customer No (Main)',
                label: 'Customer No (Main)',
                initialValue: widget._leads.custMainNo,
              ),
              CostumeFormField(
                hint: 'Nama Kostumer',
                label: 'Nama Kostumer',
                initialValue: widget._leads.custName,
              ),
              CostumeFormField(
                hint: 'Nomor HP 1',
                label: 'Nomor HP 1',
                initialValue: widget._leads.mobileNoOne,
              ),
              CostumeFormField(
                hint: 'Nomor HP 2',
                label: 'Nomor HP 2',
                initialValue: widget._leads.mobileNoTwo,
              ),
              CostumeFormField(
                hint: 'Alamat',
                label: 'Alamat',
                initialValue: widget._leads.alamatGenerated,
                maxLines: null,
              ),
              CostumeFormField(
                hint: 'Status FGC',
                label: 'Status FGC',
                initialValue: widget._leads.statusFgc,
              ),
              CostumeFormField(
                hint: 'Plafond FGC',
                label: 'Plafond FGC',
                initialValue: widget._leads.plafondFgc,
              ),
              Text('Gender'),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: Text(GenderEnum.male.value),
                      value: GenderEnum.male.value,
                      contentPadding: const EdgeInsets.all(0),
                      groupValue: _gender,
                      onChanged: (value) => {
                        setState(() {
                          _gender = value;
                        })
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: Text(GenderEnum.female.value),
                      value: GenderEnum.female.value,
                      contentPadding: const EdgeInsets.all(0),
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
              CostumeDropdownForm(
                hint: 'Follow Up',
                label: 'Follow Up',
                value: _followUpValue,
                items: _followUpBy,
                onChange: (value) => {
                  setState(() {
                    _followUpValue = value;
                  })
                },
              ),
              CostumeDropdownForm(
                hint: 'Follow Up Result',
                label: 'Follow Up Result',
                value: _followUpResultValue,
                items: _followUpResult,
                onChange: (value) => {
                  setState(() {
                    _followUpResultValue = value;
                  })
                },
              ),
              CostumeFormField(
                hint: 'Tempat Lahir',
                label: 'Tempat Lahir',
                initialValue: widget._leads.birthPlace,
                maxLines: null,
              ),
              CostumeFormField(
                hint: 'Tanggal Lahir',
                label: 'Tanggal Lahir',
                initialValue: widget._leads.birthDate.toString(),
              ),
              CostumeFormField(
                hint: 'Tanggal Visit',
                label: 'Tanggal Visit',
                initialValue: widget._leads.visitDate.toString(),
              ),
              CostumeFormField(
                hint: 'No KTP',
                label: 'No KTP',
                initialValue: widget._leads.nik,
              ),
              CostumeDropdownForm(
                hint: 'Product Required (BU yang diinginkan)',
                label: 'Product Required (BU yang diinginkan)',
                value: _buValue,
                items: [_buValue ?? ''],
                enable: true,
                onChange: null,
              ),
              CostumeFormField(
                hint: 'Remark',
                label: 'Remark',
                initialValue: widget._leads.remark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
