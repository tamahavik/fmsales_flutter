import 'package:flutter/material.dart';
import 'package:ufi/components/costume_dropdown_form.dart';
import 'package:ufi/components/costume_form_field.dart';
import 'package:ufi/components/gender_radio_button.dart';
import 'package:ufi/model/leads.dart';

class Form1Screen extends StatefulWidget {
  const Form1Screen({super.key, required Leads leads}) : _leads = leads;
  final Leads _leads;

  @override
  State<Form1Screen> createState() => _Form1ScreenState();
}

class _Form1ScreenState extends State<Form1Screen> {
  final int _form = 1;
  String? _followUpValue;
  String? _followUpResultValue;
  String? _buValue = 'UFI';
  final List<String> _followUpBy = ["Telepon", "Visit"];
  final List<String> _followUpResult = [
    "Tertarik",
    "Tidak Tertarik",
    "Peluang"
  ];
  final _formKey = GlobalKey<FormState>();

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
        child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CostumeFormField(
                  hint: 'Customer No (Main)',
                  label: 'Customer No (Main)',
                  initialValue: widget._leads.custMainNo,
                  callback: (p0) => widget._leads.custMainNo = p0 ?? '',
                ),
                CostumeFormField(
                  hint: 'Nama Kostumer',
                  label: 'Nama Kostumer',
                  initialValue: widget._leads.custName,
                  callback: (p0) => widget._leads.custName = p0 ?? '',
                ),
                CostumeFormField(
                  hint: 'Nomor HP 1',
                  label: 'Nomor HP 1',
                  initialValue: widget._leads.mobileNoOne,
                  callback: (p0) => widget._leads.mobileNoOne = p0 ?? '',
                ),
                CostumeFormField(
                  hint: 'Nomor HP 2',
                  label: 'Nomor HP 2',
                  initialValue: widget._leads.mobileNoTwo,
                  callback: (p0) => widget._leads.mobileNoTwo = p0 ?? '',
                ),
                CostumeFormField(
                  hint: 'Alamat',
                  label: 'Alamat',
                  initialValue: widget._leads.alamatGenerated,
                  maxLines: null,
                  callback: (p0) => widget._leads.alamatGenerated = p0 ?? '',
                ),
                CostumeFormField(
                  hint: 'Status FGC',
                  label: 'Status FGC',
                  initialValue: widget._leads.statusFgc,
                  callback: (p0) => widget._leads.statusFgc = p0 ?? '',
                ),
                CostumeFormField(
                  hint: 'Plafond FGC',
                  label: 'Plafond FGC',
                  initialValue: widget._leads.plafondFgc,
                  callback: (p0) => widget._leads.plafondFgc = p0 ?? '',
                ),
                GenderRadioButton(
                  callback: (p0) => {
                    setState(() => widget._leads.gender = p0 ?? ''),
                  },
                ),
                CostumeDropdownForm(
                  hint: 'Follow Up',
                  label: 'Follow Up',
                  value: _followUpValue,
                  items: _followUpBy,
                  callback: (p0) => widget._leads.followUp = p0 ?? '',
                ),
                CostumeDropdownForm(
                  hint: 'Follow Up Result',
                  label: 'Follow Up Result',
                  value: _followUpResultValue,
                  items: _followUpResult,
                  callback: (p0) => widget._leads.followUpResult = p0 ?? '',
                ),
                CostumeFormField(
                  hint: 'Tempat Lahir',
                  label: 'Tempat Lahir',
                  initialValue: widget._leads.birthPlace,
                  maxLines: null,
                  callback: (p0) => widget._leads.birthPlace = p0 ?? '',
                ),
                CostumeFormField(
                  hint: 'Tanggal Lahir',
                  label: 'Tanggal Lahir',
                  initialValue: widget._leads.birthDate.toString(),
                  callback: (p0) =>
                      widget._leads.birthDate = int.parse(p0 ?? '0'),
                ),
                CostumeFormField(
                  hint: 'Tanggal Visit',
                  label: 'Tanggal Visit',
                  initialValue: widget._leads.visitDate.toString(),
                  callback: (p0) =>
                      widget._leads.visitDate = int.parse(p0 ?? '0'),
                ),
                CostumeFormField(
                  hint: 'No KTP',
                  label: 'No KTP',
                  initialValue: widget._leads.nik,
                  callback: (p0) => widget._leads.nik = p0 ?? '',
                ),
                CostumeDropdownForm(
                  hint: 'Product Required (BU yang diinginkan)',
                  label: 'Product Required (BU yang diinginkan)',
                  value: _buValue,
                  items: [_buValue ?? ''],
                  enable: false,
                  callback: null,
                ),
                CostumeFormField(
                  hint: 'Remark',
                  label: 'Remark',
                  initialValue: widget._leads.remark,
                  callback: (p0) => widget._leads.remark = p0 ?? '',
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          print('folowup : ' + widget._leads.followUp);
                          print('folowupresult : ' + widget._leads.followUpResult);
                        }
                      });
                    },
                    child: Text('Next'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
