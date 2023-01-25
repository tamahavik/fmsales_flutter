import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ufi/model/history_leads_header.dart';

import '../components/history_card.dart';
import '../model/history_leads_detail.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final List<HistoryLeadsHeader> history = [
    const HistoryLeadsHeader(
      modificationDate: '2022-10-03',
      followUpResult: 'Tidak Tertarik',
      leadsOrderId: '',
      leads: HistoryLeadsDetail(
        customerName: 'AQUAMENT AA',
        mobileNo01: '081233441201',
        customerNo: '',
      ),
    ),
    const HistoryLeadsHeader(
      modificationDate: '2022-11-03',
      followUpResult: 'Tertarik',
      leadsOrderId: '',
      leads: HistoryLeadsDetail(
        customerName: 'AQUAMENT BB',
        mobileNo01: '081233441202',
        customerNo: '',
      ),
    ),
    const HistoryLeadsHeader(
      modificationDate: '2022-12-03',
      followUpResult: 'Peluang Jangka Pendek',
      leadsOrderId: '',
      leads: HistoryLeadsDetail(
        customerName: 'AQUAMENT CC',
        mobileNo01: '081233441203',
        customerNo: '',
      ),
    ),
  ];

  // List<Widget>
  Map<String, List<Widget>> _result = {};

  Map<String, List<Widget>> mapToMonth(
    List<HistoryLeadsHeader> history,
  ) {
    for (HistoryLeadsHeader header in history) {
      DateTime parseDate = DateTime.parse(header.modificationDate!);
      String month = DateFormat("MMMM").format(parseDate);
      List<Widget> listHeader = _result[month] ?? [];
      listHeader.add(HistoryCard(
        header: header,
      ));
      _result[month] = listHeader;
    }
    return _result;
  }

  @override
  void initState() {
    mapToMonth(history);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _buildExpandableTile(List<Widget> items, String title) {
    return ExpansionTile(
      title: Text(
        title,
      ),
      children: items,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: _result.length,
      itemBuilder: (BuildContext context, int index) {
        String key = _result.keys.elementAt(index);
        return _buildExpandableTile(_result[key]!, key);
      },
    );
  }
}
