import 'package:flutter/material.dart';
import 'package:ufi/components/constume_chips.dart';
import 'package:ufi/components/costume_form_field.dart';
import 'package:ufi/model/leads.dart';
import 'package:ufi/utils/default_value.dart';

class Form1Screen extends StatefulWidget {
  const Form1Screen({super.key, required Leads leads}) : _leads = leads;
  final Leads _leads;

  @override
  State<Form1Screen> createState() => _Form1ScreenState();
}

class _Form1ScreenState extends State<Form1Screen> {
  final int _form = 1;
  final _formKey = GlobalKey<FormState>();
  bool _errorGender = false;
  bool _errorFollowUp = false;
  bool _errorFollowUpResult = false;

  bool _validateChips() {
    bool isError = false;
    setState(() {
      if (widget._leads.gender.isEmpty) {
        isError = true;
        _errorGender = true;
      } else {
        isError = false;
        _errorGender = false;
      }

      if (widget._leads.followUp.isEmpty) {
        isError = true;
        _errorFollowUp = true;
      } else {
        isError = false;
        _errorFollowUp = false;
      }

      if (widget._leads.followUpResult.isEmpty) {
        isError = true;
        _errorFollowUpResult = true;
      } else {
        isError = false;
        _errorFollowUpResult = false;
      }
    });
    return isError;
  }

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
                CostumeSelectedChips(
                  callback: (p0) => widget._leads.gender = p0 ?? '',
                  label: 'Gender',
                  items: GENDER,
                  isError: _errorGender,
                  initialValue: GENDER.indexWhere(
                      (element) => element.value == widget._leads.gender),
                ),
                CostumeSelectedChips(
                  callback: (p0) => widget._leads.followUp = p0 ?? '',
                  label: 'Follow Up',
                  items: FOLLOW_UP,
                  isError: _errorFollowUp,
                  initialValue: FOLLOW_UP.indexWhere(
                      (element) => element.value == widget._leads.followUp),
                ),
                CostumeSelectedChips(
                  callback: (p0) => widget._leads.followUpResult = p0 ?? '',
                  label: 'Follow Up Result',
                  items: FOLLOW_UP_RESULT,
                  isError: _errorFollowUpResult,
                  initialValue: FOLLOW_UP_RESULT.indexWhere((element) =>
                      element.value == widget._leads.followUpResult),
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
                CostumeSelectedChips(
                  callback: (p0) => widget._leads.businessUnit = p0 ?? '',
                  label: 'Product Required (BU yang diinginkan)',
                  items: BU,
                  enable: false,
                  initialValue: 0,
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
                        if (_validateChips() &&
                            _formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          print('folowup : ' + widget._leads.gender);
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
