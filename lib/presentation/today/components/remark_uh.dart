import 'package:flutter/material.dart';
import 'package:ufi/model/leads.dart';

class RemarkUh extends StatelessWidget {
  const RemarkUh({
    super.key,
    required Leads leads,
  }) : _leads = leads;

  final Leads _leads;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _leads.remarkUh.isEmpty ? false : true,
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 15, bottom: 5),
        padding: const EdgeInsets.all(5),
        width: double.infinity,
        color: Colors.amber[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pesan UH :',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            Text(
              'HasilFu UH : ${_leads.hasilFuUh}',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            Text(
              'Remark UH : ${_leads.remarkUh}',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}