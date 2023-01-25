import 'package:flutter/material.dart';

import '../model/history_leads_header.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key, required this.header});

  final HistoryLeadsHeader header;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    header.modificationDate ?? '',
                    style: TextStyle(
                      color: Colors.amber[800],
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    header.followUpResult ?? '',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              header.leads?.customerName ?? '',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
            Text(
              header.leads?.mobileNo01 ?? '',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
            Text(
              header.leadsOrderId ?? '',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
